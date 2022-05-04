Import-Module "$PSScriptRoot\GlobalFunctions.psm1"
clear-host

[Console]::CursorVisible = $false

foreach ($i in 0..16) {Write-TextAtPosition -Text "╔══════════════════════════════════════╗
║ ERROR!                             $([char]27)[48;5;15m$([char]27)[38;5;0mX$([char]27)[0m ║
╠══════════════════════════════════════╣
║                                      ║
║       Please end my suffering.       ║
║                                      ║
║               $([char]27)[48;5;15m$([char]27)[38;5;0m   OK   $([char]27)[0m               ║
╚══════════════════════════════════════╝" -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)}
Write-TextAtPosition -Text "                            ▄▄▄▄▄▄▄    ▄▄▄                   ▄▄        
         ▄████▄      ▄████▄ ▓██████████ ▓████▓▄              ▓███▓     
        ███▓███▓    ████████ ▓██▓███████ ▓██████▓▄          ▓███▓  ▀   
   ▄   ███▓ ▀███▓  ███▓▀ ▓███ ███▓  ▀▓███ ███▓████▓▄▄      ▓███▓  ▄█   
   ▓  ▓███   ▓████ ███    ███ ███     ███▓███  ▓███▓█▓    ▓███▓  ██    
      ███▓     ▀▀ ███      ███▓██      ███▓██     ▓███▓ ▄▓███▓  ██▓    
    █ ███         ███      ███▓██      ███▓████▓   ▓███▓▓███▓ ▓██▓     
   ▓█ ███         ███      ███▓██      ███▓███▓     ▓██████▓ ▓███      
   █▓ ███         ███▓    ▓███▓██     ▓███▓██        ▓████▓  ▓████▓    
 ▓██  ▓███     ▄██▓███    ███ ███    ▄███▓███   ▓██▄▓██████▓  ▓████▓   
▓██▓   ████▄ ▓███▓ ▓███ ▄███▓ ███▓ ▄▓███ █████ ▓███▓███▓▓███▓  ▓█████▓ 
▓██    ▓████████▓  ▓████████▓ █████████  ▓████████▓███▓▀ ▓███▓   █████▓
 ███▓   ███████▓ ▄  ▓██████▓  ▓███████    ███████▓███▓    ▓███▓   ████▓
 ▓████▓  █████▓  ▓█  ▓████▓   ▓██████  █▓  █████▓███▓   █  ▓███▓   ███▓
  ▓████▓  ▀██▓  ▓███  ▀██▀  █  ▓███▀  ▓██▓  ▀██▓███▓   ██▓  ▓███▓ ████▓
   ▓█████▓▄   ▄▓█████▓▄  ▄▓███▄    ▄▓██████▓▄       ▄▓████▓▄     ▄███▓ 
    ▓█████████████▓████████████████████▓████████████████████████████▓  
     ▀▓███████████████████████████████████████████████████████████▓▀   
       ▄█▓███████▀▀██████▓▄ ▀▓▀▀         ▀▀▓▀ ▄▓██████▀▀███████▓█▄     
      ▓▀  ▓█▀▀▀      ▀▀███▓                   ▓███▀▀      ▀▀▀█▓  ▀▓    
       ▀ ▓█▄  ▄      ▄ ▄▓▀                     ▀▓▄ ▄      ▄  ▄█▓ ▀     
         ▀███▀        ▀▀                         ▀▀        ▀███▀       " -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)
Write-TextAtPosition -Text (Write-Scroll -Message "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt, dolor in consectetur tempus, leo ipsum consectetur metus, id volutpat felis diam sed ipsum. In justo elit, faucibus non convallis ut, egestas tristique urna. Nulla a diam fermentum, consequat sem vulputate, feugiat diam. Praesent lorem felis, consectetur et lectus nec, varius feugiat enim. Suspendisse mollis, diam sit amet tincidunt dapibus, tortor turpis suscipit enim, a sollicitudin urna lorem eu lacus. Proin ultricies blandit nibh. Donec fermentum metus vel ex scelerisque mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;

Integer placerat placerat libero, sed efficitur mi pulvinar vitae. Integer quam nisi, cursus ac interdum at, pellentesque at nunc. Maecenas porttitor semper tristique. Suspendisse interdum non ligula in euismod. Mauris tempus mi enim, in ultrices urna dictum tincidunt. Aenean metus dolor, congue ut eros sed, tempor euismod ex. Mauris leo est, mattis at diam sit amet, faucibus mollis urna. Nulla scelerisque, metus id maximus faucibus, enim orci fermentum est, id laoreet risus ipsum et massa. Sed nunc ipsum, suscipit non nulla quis, hendrerit malesuada orci. Donec molestie nisl arcu, laoreet rhoncus turpis viverra a. Sed venenatis interdum nisl vel dictum.

Mauris ipsum quam, porttitor eu ipsum in, auctor lobortis justo. Nullam a urna aliquet, lobortis lacus sit amet, volutpat nunc. Morbi sed condimentum erat. Aliquam scelerisque diam tortor, et interdum quam tempor euismod. Nullam elementum placerat ex at euismod. Duis vitae enim sit amet ligula pretium tempor sed luctus arcu. Cras pharetra nec ex sit amet pharetra. Praesent convallis neque augue, a efficitur mauris malesuada at.


 --- Just another test message ---") -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)
Write-TextAtPosition -Text (Update-ImageReplaceWithRandomChars -Image "                                  ~~~~~~~~~~~~                                  
                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                        
                  ~~~~~~~~~~~~~~~~~          ~~~~~~~~~~~~~~~~~                  
             ~~~~~~~~~~              ~~~~~~   ~~~~     ~~~~~~~~~~               
           ~~~~~~~                  ~~~~~~~~~    ~~~          ~~~~~~~           
        ~~~~~~                       ~~~~~~~~~~   ~~~             ~~~~~~        
      ~~~~~                           ~~~~~~~~~~   ~~~               ~~~~~      
    ~~~~                               ~~~~~~~~~~   ~~~                 ~~~~    
 ~~~~~                  ~~              ~~~~~~~~~~   ~~~                  ~~~~~ 
~~~~                    ~~~   ~~~~~      ~~~~~~~~~   ~~~                    ~~~~
 ~~~~~                  ~~~   ~~~~~~~~~~~~~~~~~~~~   ~~~                  ~~~~~ 
    ~~~~                 ~~~   ~~~~~~~~~~~~~~~~~~   ~~~                 ~~~~    
      ~~~~~               ~~~   ~~~~~~~~~~~~~~~~   ~~~               ~~~~~      
        ~~~~~~             ~~~   ~~~~~~~~~~~~~~   ~~~             ~~~~~~        
           ~~~~~~~          ~~~    ~~~~~~~~~~    ~~~          ~~~~~~~           
              ~~~~~~~~~~     ~~~~    ~~~~~~    ~~~~     ~~~~~~~~~~              
                  ~~~~~~~~~~~~~~~~~          ~~~~~~~~~~~~~~~~~                  
                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                        
                                  ~~~~~~~~~~~~                                  " -Character "~" -ReplaceArray "▄","▄","▄","▄"," " ) -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)
Write-TextAtPosition -Text (Write-Scroll -Message "Nunc eleifend erat sed cursus molestie. Vivamus libero dolor, congue vel libero vel, malesuada consectetur libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce hendrerit finibus sem, eget mattis eros blandit a. Etiam vel lectus lacus. Ut odio est, tincidunt id mi non, pulvinar maximus elit. Sed malesuada lobortis magna, et dictum nisi fermentum sed. Praesent ornare, quam a rutrum finibus, odio quam imperdiet sem, non efficitur felis neque at lectus. Aenean feugiat augue non varius volutpat. Nunc risus nunc, pharetra id malesuada vel, pharetra sit amet elit. Proin porta rhoncus feugiat. Ut porttitor aliquam elit eget convallis.

--- J.A.T.M ---") -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)
Write-TextAtPosition -Text (Write-BigText -Message "big text") -PosX (Get-Random -Minimum 0 -Maximum 220 ) -PosY (Get-Random -Minimum 0 -Maximum 50)
Write-TextAtPosition -Text (Write-BigText -Message "Terminal ascii Graphics Compositing Test") -PosX 40 -PosY 6