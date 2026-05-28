<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trainer Card</title>

<style>

body{
    margin:0;
    min-height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;

    background:#ffffff;
    font-family:Arial,sans-serif;
}

/* =========================
   CARD
========================= */

.card-container{
    width:736px;
    height:480px;
    perspective:1200px;
}

.id-card{
    width:100%;
    height:100%;

    position:relative;

    transform-style:preserve-3d;
    -webkit-transform-style:preserve-3d;

    transition:transform 0.8s ease;

    cursor:pointer;
}

.id-card.flipped{
    transform:rotateY(180deg);
}

/* =========================
   BOTH SIDES
========================= */

.card-face{
    position:absolute;

    width:100%;
    height:100%;

    top:0;
    left:0;

    backface-visibility:hidden;
    -webkit-backface-visibility:hidden;

    border:2px solid #d9d9d9;
    border-radius:14px;

    overflow:hidden;
    box-sizing:border-box;

    background:#ffffff;
}

/* =========================
   FRONT
========================= */

.front{
    z-index:2;

    display:flex;
    flex-direction:column;
}

/* =========================
   BACK
========================= */

.back{
    transform:rotateY(180deg);

    display:flex;
    justify-content:center;
    align-items:center;
}

.back-inner{
    width:80%;
    height:70%;

    border:2px solid #d9d9d9;
    border-radius:20px;

    display:flex;
    justify-content:center;
    align-items:center;

    color:#999;
    font-size:28px;
    font-weight:bold;
}

/* =========================
   HEADER
========================= */

.top-header{
    height:42px;

    border-bottom:2px solid #d9d9d9;

    display:flex;
    align-items:center;

    padding-left:14px;

    font-size:20px;
    font-weight:bold;
}

/* =========================
   BADGES
========================= */

.badge-section{
    height:60px;

    border-bottom:2px solid #d9d9d9;

    padding:6px 14px;
    box-sizing:border-box;
}

.badge-title{
    font-size:13px;
    font-weight:bold;

    margin-bottom:6px;
}

.badges{
    display:flex;
    gap:10px;
}

.badge{
    width:34px;
    height:34px;

    border-radius:50%;

    border:2px solid #d9d9d9;

    background:#fafafa;
}

/* =========================
   MAIN CONTENT
========================= */

.main-content{
    flex:1;

    display:grid;
    grid-template-columns:220px 1fr 190px;

    gap:18px;

    padding:18px;
    box-sizing:border-box;

    align-items:start;
}

/* =========================
   PHOTO
========================= */

.photo-area{
    width:220px;
    height:340px;

    border:2px solid #d9d9d9;
    border-radius:10px;

    background:#fafafa;

    display:flex;
    justify-content:center;
    align-items:center;

    color:#999;
    font-size:15px;

    overflow:hidden;
}

.photo-area img{
    width:100%;
    height:100%;
    object-fit:cover;
}

/* =========================
   INFO
========================= */

.info-section{
    width:100%;

    display:flex;
    flex-direction:column;
    gap:10px;
}

.info-box{
    border:1px solid #d9d9d9;
    border-radius:8px;

    padding:8px 10px;

    display:flex;
    justify-content:space-between;
    align-items:center;

    background:#fff;
}

.label{
    font-weight:bold;
}

.value{
    color:#777;
}

/* =========================
   POKEMON
========================= */

.pokemon-section{
    width:190px;
}

.pokemon-title{
    font-weight:bold;
    margin-bottom:8px;
}

.pokemon-grid{
    display:grid;
    grid-template-columns:repeat(2, 1fr);
    gap:10px;
}

.pokemon-slot{
    width:90px;
    height:97px;

    border:2px solid #d9d9d9;
    border-radius:10px;

    background:#fafafa;

    display:flex;
    justify-content:center;
    align-items:center;

    color:#aaa;
}

</style>
</head>

<body>

<div class="card-container">

<div class="id-card" id="trainerCard">

    <!-- FRONT -->
    <div class="card-face front">

        <div class="top-header">
            Pokémon Trainer Card
        </div>

        <div class="badge-section">

            <div class="badge-title">
                OBTAINED BADGES
            </div>

            <div class="badges">
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
                <div class="badge"></div>
            </div>

        </div>

        <div class="main-content">

            <!-- PHOTO -->
            <div class="photo-area">
                PHOTO
            </div>

            <!-- INFO -->
            <div class="info-section">

                <div class="info-box">
                    <span class="label">NAME</span>
                    <span class="value">INSERT TEXT</span>
                </div>

                <div class="info-box">
                    <span class="label">AGE</span>
                    <span class="value">00</span>
                </div>

                <div class="info-box">
                    <span class="label">GENDER</span>
                    <span class="value">INSERT TEXT</span>
                </div>

                <div class="info-box">
                    <span class="label">HOMETOWN</span>
                    <span class="value">INSERT TEXT</span>
                </div>

                <div class="info-box">
                    <span class="label">REGION</span>
                    <span class="value">INSERT TEXT</span>
                </div>

                <div class="info-box">
                    <span class="label">CLASS</span>
                    <span class="value">INSERT TEXT</span>
                </div>

            </div>

            <!-- POKEMON -->
            <div class="pokemon-section">

                <div class="pokemon-title">
                    POKÉMON
                </div>

                <div class="pokemon-grid">

                    <div class="pokemon-slot">1</div>
                    <div class="pokemon-slot">2</div>

                    <div class="pokemon-slot">3</div>
                    <div class="pokemon-slot">4</div>

                    <div class="pokemon-slot">5</div>
                    <div class="pokemon-slot">6</div>

                </div>

            </div>

        </div>

    </div>

    <!-- BACK -->
    <div class="card-face back">

        <div class="back-inner">
            BACK SIDE
        </div>

    </div>

</div>

</div>

<script>

const card = document.getElementById("trainerCard");

card.addEventListener("click", () => {
    card.classList.toggle("flipped");
});

</script>

</body>
</html>
