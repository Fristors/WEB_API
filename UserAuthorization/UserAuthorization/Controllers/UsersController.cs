using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using UserAuthorization;

namespace UserAuthorization.Controllers
{
    public class UsersController : ApiController
    {
        private UsersDBEntities db = new UsersDBEntities();

        // GET: api/Users
        public IQueryable<User> GetUser()
        {
            return db.User;
        }

        // GET: api/Users/5
        [ResponseType(typeof(User))]
        public IHttpActionResult GetUser(int id)
        {
            User user = db.User.Find(id);
            if (user == null)
            {
                return NotFound();
            }

            return Json(user);
        }

        [AcceptVerbs("GET")]
        [Route("api/users/login={email};password={password}")]
        [ResponseType(typeof(User))]
        public IHttpActionResult Authorization(string email, string password)
        {
            User user = db.User.Where(u => u.Email == email && u.Password == password).SingleOrDefault();
            if (user == null)
            {
                return NotFound();
            }

            return Json(user);
        }

        [AcceptVerbs("POST")]
        [Route("api/users/email={email};password={password};FIO={FIO}")]
        [ResponseType(typeof(User))]
        public IHttpActionResult Registration(string email, string FIO, string passoword)
        {
            User user = new User()
            {
                Email = email,
                FIO = FIO,
                Password = passoword
            };
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.User.Add(user);
            db.SaveChanges();
            user = db.User.Where(u => u.Email == email).SingleOrDefault();

            return CreatedAtRoute("DefaultApi", new { id = user.id }, user);
        }

        [AcceptVerbs("GET")]
        [Route("api/users/login={email}")]
        [ResponseType(typeof(User))]
        public IHttpActionResult Recovery(string email)
        {
            User user = db.User.Where(u => u.Email == email).SingleOrDefault();
            if (user == null)
            {
                return NotFound();
            }

            return Json(user);
        }

        [AcceptVerbs("PUT")]
        [Route("api/users/login={email};newPassword={password}")]
        [ResponseType(typeof(void))]
        public IHttpActionResult Change(string email, string password)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            User user = db.User.Where(u => u.Email == email).SingleOrDefault();
            if (user == null)
            {
                return BadRequest();
            }
            user.Password = password;
            db.Entry(user).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(user.id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }



        // PUT: api/Users/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutUser(int id, User user)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != user.id)
            {
                return BadRequest();
            }

            db.Entry(user).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Users
        [ResponseType(typeof(User))]
        public IHttpActionResult PostUser(User user)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.User.Add(user);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = user.id }, user);
        }

        // DELETE: api/Users/5
        [ResponseType(typeof(User))]
        public IHttpActionResult DeleteUser(int id)
        {
            User user = db.User.Find(id);
            if (user == null)
            {
                return NotFound();
            }

            db.User.Remove(user);
            db.SaveChanges();

            return Ok(user);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool UserExists(int id)
        {
            return db.User.Count(e => e.id == id) > 0;
        }
    }
}