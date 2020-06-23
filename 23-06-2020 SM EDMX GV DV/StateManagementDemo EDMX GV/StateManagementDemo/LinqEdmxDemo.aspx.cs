using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementDemo
{
    public partial class LinqEdmxDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMovies_Click(object sender, EventArgs e)
        {
            Entities videos = new Entities();

            //opt 1  -linq
            //var getAllmovies = from movie in videos.Movies
            //                   select new { movie.MovieID , movie.MovieName};

            //GridView1.DataSource = getAllmovies.ToList();
            //GridView1.DataBind();

            //opt2  -extension methods
            GridView1.DataSource = videos.Movies.Select(
                                    movie => new { movie.MovieID, movie.MovieName }).ToList();
            GridView1.DataBind();

            //var movieWithStar =  videos.Movies.FirstOrDefault(mov => mov.MovieName.Contains("star"));
            // Response.Write( movieWithStar.MovieName + ", " +  movieWithStar.MovieID);


        }

        protected void btnActorsinMovies_Click(object sender, EventArgs e)
        {
            using (Entities videos = new Entities())
            {
                var actorsinMovies = from m in videos.Movies
                                     orderby m.Actors.Count() descending
                                     select m;

                string str = "";
                foreach (var mov in actorsinMovies)
                {
                    str += "MOVIE:<br/>";
                    str += mov.MovieName + "---------------<br />";
                    foreach (var actor in mov.Actors)
                    {
                        str += $" -- {actor.ActorName} <br />";
                    }
                }
                Response.Write(str);
            }
        }
        
        protected void btnAddMovie_Click(object sender, EventArgs e)
        {
            using (Entities videos = new Entities())
            {
                short mtid = videos.MovieTypes.FirstOrDefault(mti => mti.MovieTypeName == "Action").MovieTypeID;
                Random rnd = new Random();
                int random = rnd.Next(100);
                Movie m = new Movie();
                m.MovieID = "myID" + random;
                m.MovieName = "myMovie" + random;
                m.DateAdded = new DateTime(2020, 6, 23);
                m.Summary = "";
                m.MoviePicUrl = "";
                m.TrailerUrl = "";
                m.CountryID = 1;
                m.MovieTypeID = 2;

                videos.Movies.Add(m);
                videos.SaveChanges();
            }
        }

        protected void btnUpdateMovie_Click(object sender, EventArgs e)
        {
            Entities vs = new Entities();
            Movie m = vs.Movies.FirstOrDefault(mov =>mov.MovieName== "myMovie46");
            m.MovieName = "myMovie777";
            vs.SaveChanges();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Entities vs = new Entities();
            Movie m = vs.Movies.FirstOrDefault(mov => mov.MovieName == "myMovie777");
            vs.Movies.Remove(m);
            vs.SaveChanges();
        }
    }
}