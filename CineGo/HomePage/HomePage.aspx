<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CineGo.HomePage.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
        <!-- Font 1 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:opsz,wght@12..96,200..800&display=swap" rel="stylesheet" />
    <!-- Dm sans -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineGo</title>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
.bricolage-grotesque-<uniquifier > {
    font-family: "Bricolage Grotesque", serif;
    font-optical-sizing: auto;
    font-weight: <weight>;
    font-style: normal;
    font-variation-settings: "wdth" 100;
}

.dm-sans-<uniquifier > {
    font-family: "DM Sans", serif;
    font-optical-sizing: auto;
    font-weight: <weight>;
    font-style: normal;
}
body {
    background-color: #202226;
    margin: 0;
    padding: 0; /* Remove extra space */
}


        /* Navigation Bar */
.navigation {
    position: fixed; /* Keep it fixed at the top */
    top: 0;
    left: 0;
    width: 100%; /* Full width */
    height: 70px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 24px;
    background-color: rgba(32, 34, 38, 0.8);
    backdrop-filter: blur(12px);
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    z-index: 1000;
}

.auth-buttons {
    margin-right: 30px;
}

.sign-in-button {
    margin-right: 20px;
    background-color: #7A63F9; /* Crimson Red */
    color: white;
    font-family: "DM Sans", serif;
    font-size: 16px;
    font-weight: 500;
    padding: 8px 16px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

    .sign-in-button:hover {
        background-color: #9F8EFF; /* Darker Red */
        transform: scale(1.05);
    }


.logo {
    font-size: 26px;
    font-weight: 700;
    color: #7A63F9;
    font-family: "DM Sans", serif;
}

.home-parent {
    display: flex;
    gap: 42px;
    font-size: 16px;
    font-family: "DM Sans", serif;
    margin-right: 60px;
}

    .home-parent a {
        color: #F4F4F4;
        text-decoration: none;
        color: inherit;
        font-weight: inherit;
    }

.home {
    font-family: "DM Sans", serif;
    font-weight: 500;
    color: #F4F4F4;
    cursor: pointer;
    transition: color 0.3s ease;
}

.movies {
    font-family: "DM Sans", serif;
    font-weight: 600;
    color: #7A63F9;
    cursor: pointer;
    transition: color 0.3s ease;
}
.about {
    font-family: "DM Sans", serif;
    font-weight: 500;
    color: #F4F4F4;
    cursor: pointer;
    transition: color 0.3s ease;
}

.about:hover,
.home:hover {
    color: #7A63F9;
    font-weight: 600;
}
h3 {
    font-family: "Bricolage Grotesque", sans-serif;
    font-size: 22px;
    font-weight: 400;
    color: #F4F4F4;
    margin-top: 10px;
    margin-bottom: 8px;
}
/*p {
    font-family: "Bricolage Grotesque", sans-serif;
            font-size: 18px;
            color: #FFD700;
            margin-top: 5px;
            margin-bottom: 15px;
}*/

        /* Movies Section */
        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 100px 20px 20px;
            gap: 20px;
        }
        .movie {
/*            background: #9F8EFF;*/
               color: #F4F4F4;
               font-family:  font-family: "Bricolage Grotesque", serif;
            border: #9F8EFF 1px solid;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
/*            text-align: center;*/
            width: 250px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .movie:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .movie img {
            width: 100%;
            height: 350px;
            object-fit: cover;
            border-radius: 8px;
        }

        .rating {
            font-family: "Bricolage Grotesque", sans-serif;
            font-size: 16px;
            color: #FFD700;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        /* Buttons */
        .book-btn {
           background-color: #7A63F9;
            color: white;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .book-btn:hover {
            background-color: #9F8EFF; /* Change background color to black on hover */
            transform: scale(1.05);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .movie {
                width: 90%;
            }
        }

/*        SlideShow*/
.SlideShow {
    margin-top: 90px;
    position: relative;
    width: 100%;
    max-width: 100%;
    height: 500px; /* Adjust height as needed */
    overflow: hidden;
}

.SlideShow img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    position: absolute;
    opacity: 0;
    transition: opacity 1s ease-in-out;
}

/* Animation for slideshow */
@keyframes slideShow {
    0% { opacity: 1; }
    33% { opacity: 1; }
    34% { opacity: 0; }
    66% { opacity: 0; }
    67% { opacity: 1; }
    100% { opacity: 1; }
}

/* Apply animation to each image */
.SlideShow img:nth-child(1) {
    animation: slideShow 9s infinite;
}

.SlideShow img:nth-child(2) {
    animation: slideShow 9s infinite 3s;
}

.SlideShow img:nth-child(3) {
    animation: slideShow 9s infinite 6s;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="SlideShow">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn8f3cKFThjuWsd0re0RhUMOvx1h4abkr3NA&s" alt="Avatar">
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBxuNxr8QBsQnkPcrcsjMm3rvznUrxkG4daQ&s" alt="Interstellar">
    <img src="https://www.themoviedb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg" alt="The Dark Knight">
</div>

        <!-- Navigation Bar -->
        <div class="navigation">
            <div class="logo">CineGo</div>
            <div class="home-parent">
                <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
                <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
                <div class="about"><a href="/AboutUs/About.aspx">About Us</a></div>
            </div>
            <div class="auth-buttons">
                <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="sign-in-button" OnClick="btnSignIn_Click" />
            </div>
        </div>

        <!-- Movies Section -->
        <div class="movies-container">
            <!-- Movie 1 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg" alt="Avatar" />
               <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Avatar</h3>

                <div class="rating">★ 7.8/10</div>
                <a href="MovieDetails.aspx?title=Avatar"><button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 2 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg" alt="Interstellar" />
                <h3>Interstellar</h3>
                <div class="rating">★ 8.6/10</div>
                <asp:Button ID="btnInterstellar" runat="server" CssClass="book-btn" Text="Book Now" OnClick="btnInterstellar_Click" />

            </div>

            <!-- Movie 3 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg" alt="Inception" />
                <h3>Inception</h3>
                <div class="rating">★ 8.8/10</div>
                <a href="MovieDetails.aspx?title=Inception"><button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 4 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg" alt="The Dark Knight" />
                <h3>The Dark Knight</h3>
                <div class="rating">★ 9.0/10</div>
                <a href="MovieDetails.aspx?title=The Dark Knight"><button class="book-btn">Book Now</button></a>
            </div>
        </div>

    </form>
</body>
</html>
