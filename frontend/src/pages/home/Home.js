import Navbar from "../../components/navbar/Navbar"
import Footer from "../../components/footer/Footer"
import "./Home.css"
import { Link } from "react-router-dom"

const Home = () =>{


    return (
        <>
            <Navbar/>
            <div className="home-container">
                <div className="home-banner">
                    <div className="banner-wrapper">
                        <div className="banner-info-container">
                            <h1>Schedule a service appointment</h1>
                            <div>Servicing your ....... can be really fun!</div>
                            <Link className="home-button" to="/">Schedule an appointment</Link>
                        </div>
                    </div>
                </div>
                <div className="home-slogan">
                    <div className="home-wrapper">
                        <h1>Our service is a guarantee of quality!</h1>
                        <span>........ Service offers you easy and fast solutions, tailored to your needs. Save time and have peace of mind. Servicing your ........ can really be a pleasure!</span>
                    </div>
                </div>
                <div className="home-example-services">
                    {/* here a few services fetched from api + redirect to its page */}
                </div>

                {/* maybe something more, we'll see */}

                <div className="home-schedule">
                    <div className="home-schedule-info">
                        <h1>Book a service appointment</h1>
                        <span>Let the specialists take care of your car.</span>
                        <Link className="home-button" to="/">Create a ticket</Link>
                    </div>
                </div>
            </div>
            <Footer/>
        </>
    )
}
export default Home