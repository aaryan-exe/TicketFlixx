

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CineGo.HomePage.WebForm1" MasterPageFile="~/Site1.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="HomePage/Home.css" />
    <title>TicketFlicks</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="SlideShow">
        <img src="/Images/BatmanBanner.jpg" alt="Batman">
        <img src="/Images/BladeRunner.png" alt="Interstellar">
        <img src="/Images/AvatarBanner.jpeg" alt="The Dark Knight">
    </div>

    <div class="trendDiv">
        <p class="trend">Trending</p>
    </div>

    <div class="movies-container">
        <!-- Movie 1 -->
        <div class="movie">
            <img src="https://www.themoviedb.org/t/p/original/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg" alt="Avatar" />
            <h3 style="font-family: 'Bricolage Grotesque', sans-serif;">Avatar</h3>
            <div class="rating">★ 7.8/10</div>
            <a href="MovieDetails.aspx?title=Avatar">
                <button class="book-btn">Book Now</button>
            </a>
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
    </div>

    <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#f3f3f3"></asp:Label>
</asp:Content>

