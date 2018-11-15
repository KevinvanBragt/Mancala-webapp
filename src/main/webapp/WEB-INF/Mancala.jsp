<html>
<html lang="en" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title> Mancala </title>
<style>
  
  .board
  {
    display:flex;
    background-color:SaddleBrown;
    height:200px;
    width:800px;
    border-radius:50px;
    padding:30px;
  }
  
  .section
  {
    background-color:rgba(255, 255, 255, 0.03);
    margin:5px;
  }
  
  .endsection
  {
    display:flex;
    flex-grow:1;
  }
  
  .midsection
  {
    display:flex;
    flex-direction:column;
    flex-grow:6;
  }
  
  .midrow
  {
    display:flex;
    flex-grow:1;
  }
  
  .pitt
  {
    position:relative;
    background-color:rgba(255, 255, 255, 0.08);
    flex-grow:1;
    text-decoration-style: none;
    font-size: 50px;
    text-align: center;
    line-height: 70px;
    margin:5px;
    border-radius:50px;
  
  }

  .message {
    justify-content: center;
  }
  
  .bead
  {
    position:absolute;
    border-radius: 50%;
    width: 25px;
    height: 25px;
  }

  .message {
    justify-content: center;
  }

  .kalaha {
    position:relative;
    background-color:rgba(255, 255, 255, 0.08);
    flex-grow:1;
    font-size: 50px;
    text-align: center;
    line-height: 160px;
    margin:5px;
    border-radius:50px;
  }

</style>

       
</head>

<body>
  <jsp:useBean id="gamestate" class="nl.sogyo.mancala.controller.dto.GameState" scope="session"></jsp:useBean>


<div>Speler <%= gamestate.getGameState(14) + 1 %> is aan de beurt</div>

 <br><br><br><br>
  <div class="board">
    <div class="section endsection">
        <div class="kalaha" id="mb"><%= gamestate.getGameState(13) %></div> 
    </div>
    
    <div class="section midsection">
      <div class="midrow topmid">
        <div class="pitt" id="pt1"><a href="controller.do?action=makeMove&cup=13"><%= gamestate.getGameState(12) %> </a></div> 
        <div class="pitt" id="pt2"><a href="controller.do?action=makeMove&cup=12"><%= gamestate.getGameState(11) %> </a></div>
        <div class="pitt" id="pt3"><a href="controller.do?action=makeMove&cup=11"><%= gamestate.getGameState(10) %></a></div>
        <div class="pitt" id="pt4"><a href="controller.do?action=makeMove&cup=10"><%= gamestate.getGameState(9) %></a></div>
        <div class="pitt" id="pt5"><a href="controller.do?action=makeMove&cup=9"><%= gamestate.getGameState(8) %></a></div>
        <div class="pitt" id="pt6"><a href="controller.do?action=makeMove&cup=8"><%= gamestate.getGameState(7) %></a></div>
      </div>
      
      <div class="midrow botmid">
        <div class="pitt" id="pb6"><a href="controller.do?action=makeMove&cup=1"><%= gamestate.getGameState(0) %></a></div>
        <div class="pitt" id="pb5"><a href="controller.do?action=makeMove&cup=2"><%= gamestate.getGameState(1) %></a></div>
        <div class="pitt" id="pb4"><a href="controller.do?action=makeMove&cup=3"><%= gamestate.getGameState(2) %></a></div>
        <div class="pitt" id="pb3"><a href="controller.do?action=makeMove&cup=4"><%= gamestate.getGameState(3) %></a></div>
        <div class="pitt" id="pb2"><a href="controller.do?action=makeMove&cup=5"><%= gamestate.getGameState(4) %></a></div>
        <div class="pitt" id="pb1"><a href="controller.do?action=makeMove&cup=6"><%= gamestate.getGameState(5) %></a></div>
      </div>

    </div>
    
    <div class="section endsection">
        <div class="kalaha" id="mt"><%= gamestate.getGameState(6) %></div>        
    </div>
</div>



<br><br><br><br>
<div class="message"><a href="controller.do?action=init">klik hier om een nieuw spel te beginnen</a></div>
<br><br><br><br>


</body>
</html>