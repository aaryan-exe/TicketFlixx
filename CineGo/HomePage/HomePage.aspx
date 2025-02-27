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
    <title>TicketFlicks</title>
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
            background-color: #110F16;
            margin: 0;
            padding: 0;
        }


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
            background-color: rgba(17, 15, 22, 0.8);
            backdrop-filter: blur(12px);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .auth-buttons {
            margin-right: 30px;
        }

        .sign-in-button {
            margin-right: 20px;
            background-color: #7A63F9;
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
                background-color: #9F8EFF;
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

        .movies-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px 20px 20px;
            gap: 20px;
        }

        .movie {
            color: #F4F4F4;
            font-family: font-family: "Bricolage Grotesque", serif;
            border: #9F8EFF 1px solid;
            padding: 15px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
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
                background-color: #9F8EFF;
                transform: scale(1.05);
            }

        @media (max-width: 768px) {
            .movie {
                width: 90%;
            }
        }

        .SlideShow {
            margin-top: 90px;
            position: relative;
            width: 100%;
            max-width: 100%;
            height: 500px;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .SlideShow img {
                border-radius: 16px;
                width: 90%;
                height: 100%;
                object-fit: cover;
                position: absolute;
                opacity: 0;
                transition: opacity 1s ease-in-out;
                left: 50%;
                transform: translateX(-50%);
            }


        @keyframes slideShow {
            0% {
                opacity: 1;
            }

            33% {
                opacity: 1;
            }

            34% {
                opacity: 0;
            }

            66% {
                opacity: 0;
            }

            67% {
                opacity: 1;
            }

            100% {
                opacity: 1;
            }
        }

        .SlideShow img:nth-child(1) {
            animation: slideShow 9s infinite;
        }

        .SlideShow img:nth-child(2) {
            animation: slideShow 9s infinite 3s;
        }

        .SlideShow img:nth-child(3) {
            animation: slideShow 9s infinite 6s;
        }
        .trend{
            font-family: "DM Sans", serif;
            font-size: 48px;
            font-weight: 500;
            color: #f4f4f4;
            margin: 80px 0px 0px 50px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="SlideShow">
            
            <img src="/Images/BatmanBanner.jpg" alt="Batman">
            <img src="/Images/BladeRunner.png" alt="Interstellar">
            <img src="/Images/AvatarBanner.jpeg" alt="The Dark Knight">
        </div>

        <!-- Navigation Bar -->
        <div class="navigation">
            <div class="logo">TicketFlicks</div>
            <div class="home-parent">
                <div class="home"><a href="/Lander/Lander.aspx">Home</a></div>
                <div class="movies"><a href="/HomePage/HomePage.aspx">Movies</a></div>
                <div class="about"><a href="/AboutUs/About.aspx">About Us</a></div>
            </div>
            <div class="auth-buttons">
            </div>
        </div>
                <div class="trendDiv">
            <p class="trend">Trending</p>
        </div>
        <!-- Movies Section -->
        <div class="movies-container">
            <!-- Movie 1 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg" alt="Avatar" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Avatar</h3>

                <div class="rating">★ 7.8/10</div>
                <a href="MovieDetails.aspx?title=Avatar">
                    <button class="book-btn">Book Now</button></a>
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
                <a href="MovieDetails.aspx?title=Inception">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 4 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg" alt="The Dark Knight" />
                <h3>The Dark Knight</h3>
                <div class="rating">★ 9.0/10</div>
                <asp:Button ID="Batmanbtn" runat="server" CssClass="book-btn" Text="Book Now" OnClick="Batmanbtn_Click" />
            </div>
            <!-- Movie 5 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg" alt="Titanic" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Titanic</h3>
                <div class="rating">★ 7.9/10</div>
                <a href="MovieDetails.aspx?title=Titanic">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 6 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg" alt="The Godfather" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">The Godfather</h3>
                <div class="rating">★ 9.2/10</div>
                <a href="MovieDetails.aspx?title=TheGodfather">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 7 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg" alt="Fight Club" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Fight Club</h3>
                <div class="rating">★ 8.8/10</div>
                <a href="MovieDetails.aspx?title=FightClub">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 8 -->
            <div class="movie">
                <img src="https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg" alt="Avengers: Infinity War" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Avengers: Infinity War</h3>
                <div class="rating">★ 8.4/10</div>
                <a href="MovieDetails.aspx?title=InfinityWar">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 9 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg" alt="Blade Runner 2049" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Blade Runner 2049</h3>
                <div class="rating">★ 8.0/10</div>
                <a href="MovieDetails.aspx?title=BladeRunner2049">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 10 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/4GDy0PHYX3VRXUtwK5ysFbg3kEx.jpg" alt="Shutter Island" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Shutter Island</h3>
                <div class="rating">★ 8.2/10</div>
                <a href="MovieDetails.aspx?title=ShutterIsland">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 11 -->
            <div class="movie">
                <img src="https://www.themoviedb.org/t/p/original/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg" alt="Avengers: Endgame" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Avengers: Endgame</h3>
                <div class="rating">★ 8.4/10</div>
                <a href="MovieDetails.aspx?title=Avengers%20Endgame">
                    <button class="book-btn">Book Now</button></a>
            </div>

            <!-- Movie 12 -->
            <div class="movie">
                <img src="https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg" alt="Joker (2019)" />
                <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Joker (2019)</h3>
                <div class="rating">★ 8.4/10</div>
                <a href="MovieDetails.aspx?title=Joker2019">
                    <button class="book-btn">Book Now</button></a>
            </div>
        </div>

        <asp:Label ID="SessionLbl" runat="server" Text="Label" ForeColor="#f3f3f3"></asp:Label>

    </form>
</body>
</html>
