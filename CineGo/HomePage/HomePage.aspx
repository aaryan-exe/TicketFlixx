<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CineGo.HomePage.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CineGo</title>
    <link href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            font-family: "Bricolage Grotesque", sans-serif;
            background-color: #FAF6F3;
            margin: 0;
            padding: 0;
        }

        /* Navigation Bar */
        .navigation {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 70px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 24px;
            background-color: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(12px);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .auth-buttons {
            margin-right: 30px;
        }

        .sign-in-button {
            margin-right: 20px;
            background-color: #D72638;
            color: white;
            font-size: 16px;
            font-weight: 600;
            padding: 8px 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .sign-in-button:hover {
            background-color: #A6192E;
            transform: scale(1.05);
        }

        .logo {
            font-size: 26px;
            font-weight: 700;
            color: #D72638;
        }

        .home-parent {
            display: flex;
            gap: 42px;
            font-size: 16px;
            margin-right: 60px;
        }

        .home-parent a {
            text-decoration: none;
            color: inherit;
        }

        .home {
            font-weight: 600;
            color: #D72638;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .movies {
            font-weight: 500;
            color: #313131;
            cursor: pointer;
            transition: color 0.3s ease;
        }

        .home:hover,
        .movies:hover {
            color: #A6192E;
            font-weight: 600;
        }

        /* Movies Section */
        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 100px 20px 20px;
            gap: 20px;
        }

        .movie {
            background: white;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
            text-align: center;
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
            font-size: 18px;
            color: #FFD700;
            margin-top: 5px;
            margin-bottom: 15px;
        }

        /* Buttons */
        .book-btn {
            background: #D72638;
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
            background: #A6192E;
            transform: scale(1.05);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .movie {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navigation Bar -->
        <div class="navigation">
            <div class="logo">CineGo</div>
            <div class="home-parent">
                <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
                <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
                <div class="movies"><a href="/AboutUs/About.aspx">About Us</a></div>
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
                <h3>Avatar</h3>
                <div class="rating">⭐ 7.8/10</div>
                <a href="MovieDetails.aspx?title=Avatar"><button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 2 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg" alt="Interstellar" />
                <h3>Interstellar</h3>
                <div class="rating">⭐ 8.6/10</div>
                <asp:Button ID="btnInterstellar" runat="server" CssClass="book-btn" Text="Book Now" OnClick="btnInterstellar_Click" />

            </div>

            <!-- Movie 3 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg" alt="Inception" />
                <h3>Inception</h3>
                <div class="rating">⭐ 8.8/10</div>
                <a href="MovieDetails.aspx?title=Inception"><button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 4 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg" alt="The Dark Knight" />
                <h3>The Dark Knight</h3>
                <div class="rating">⭐ 9.0/10</div>
                <a href="MovieDetails.aspx?title=The Dark Knight"><button class="book-btn">Book Now</button></a>
            </div>
        </div>

    </form>
</body>
</html>
