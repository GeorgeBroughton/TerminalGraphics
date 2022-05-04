function Write-TextAtPosition {
    Param (
      [parameter(Mandatory=$true)][string]$Text,
      [parameter(Mandatory=$true)][int]$PosX,
      [parameter(Mandatory=$true)][int]$PosY,
      [switch]$Return
    )
    if ($return) { $OriginalPosition = $Host.UI.RawUI.CursorPosition }
    [string[]]$Text = $Text.split("`n")
  
    $LineNumber = 0
    $Text | ForEach-Object {
      $Host.UI.RawUI.CursorPosition = @{ X = $PosX ; Y = $PosY }
      $Host.UI.Write("$($Text[$LineNumber])")
      $LineNumber++
      $PosY++
    }
    if ($return) { $Host.UI.RawUI.CursorPosition = $OriginalPosition }
}

function Update-ImageReplaceWithRandomChars {
    param(
      [string]$character,
      [string[]]$ReplaceArray = (0,1),
      [string]$Image
    )
    foreach ($char in 0..($Image.Length-1)) {
      if ($Image[$char] -eq $character) {
        $Image = $Image.remove($char,1).insert($char,(Get-Random -InputObject $ReplaceArray))
      }
    }
    #clear-host ; "$([char]27)[48;2;0;0;255m$([char]27)[38;2;255;0;255m$Image$([char]27)[0m"
    return $Image
  }

function Write-BigText {
    param(
        [String]$Message
    )
    $l1 = @{A="█▀█ ";B="█▀▄ ";C="█▀▀ ";D="█▀▄ ";E="█▀▀ ";F="█▀▀ ";G="█▀▀ ";H="█ █ ";I="▀█▀ ";J="▀▀█ ";K="█ █ ";L="█   ";M="█▄█ ";N="█▀█ ";O="█▀█ ";P="█▀█ ";Q="█▀█ ";R="█▀█ ";S="█▀▀ ";T="▀█▀ ";U="█ █ ";V="█ █ ";W="█ █ ";X="█ █ ";Y="█ █ ";Z="▀▀█ ";' '='    ';'0'="▄▀▄ ";'1'="▄█  ";'2'="▀▀█ ";'3'="▀▀█ ";'4'="█ █ ";'5'="█▀▀ ";'6'="█▀▀ ";'7'="▀▀█ ";'8'="█▀█ ";'9'="█▀█ "}
    $l2 = @{A="█▀█ ";B="█▀▄ ";C="█   ";D="█ █ ";E="█▀  ";F="█▀  ";G="█ █ ";H="█▀█ ";I=" █  ";J="▄ █ ";K="█▀▄ ";L="█   ";M="█▀█ ";N="█ █ ";O="█ █ ";P="█▀▀ ";Q="█ █ ";R="█▀▄ ";S="▀▀█ ";T=" █  ";U="█ █ ";V="█ █ ";W="███ ";X="▄▀▄ ";Y="▀▄▀ ";Z="▄▀  ";' '='    ';'0'="█ █ ";'1'=" █  ";'2'="█▀▀ ";'3'="▀▀█ ";'4'="▀▀█ ";'5'="▀▀█ ";'6'="█▀█ ";'7'="▄▀  ";'8'="█▀█ ";'9'="▀▀█ "}
    $l3 = @{A="▀ ▀ ";B="▀▀  ";C="▀▀▀ ";D="▀▀  ";E="▀▀▀ ";F="▀   ";G="▀▀▀ ";H="▀ ▀ ";I="▀▀▀ ";J=" ▀  ";K="▀ ▀ ";L="▀▀▀ ";M="▀ ▀ ";N="▀ ▀ ";O="▀▀▀ ";P="▀   ";Q="▀▀  ";R="▀ ▀ ";S="▀▀▀ ";T=" ▀  ";U="▀▀▀ ";V=" ▀  ";W="▀ ▀ ";X="▀ ▀ ";Y=" ▀  ";Z="▀▀▀ ";' '='    ';'0'=" ▀  ";'1'="▀▀▀ ";'2'="▀▀▀ ";'3'="▀▀▀ ";'4'="  ▀ ";'5'="▀▀▀ ";'6'="▀▀▀ ";'7'="▀   ";'8'="▀▀▀ ";'9'="▀▀▀ "}

    [string[]]$Message = $Message -Split ""

    $Output      = [System.Text.StringBuilder]::new()
    $OutputLine1 = [System.Text.StringBuilder]::new()
    $OutputLine2 = [System.Text.StringBuilder]::new()
    $OutputLine3 = [System.Text.StringBuilder]::new()

    ForEach ($Character in $Message) {
        [void]$OutputLine1.Append($l1.($Character))
        [void]$OutputLine2.Append($l2.($Character))
        [void]$OutputLine3.Append($l3.($Character))
    }

    [void]$Output.AppendLine($OutputLine1.ToString())
    [void]$Output.AppendLine($OutputLine2.ToString())
    [void]$Output.AppendLine($OutputLine3.ToString())

    return $Output.ToString()
}

function Write-Scroll {
  param(
      [string]$message
  )
  $charcount = 69
  $LineStart = 2
  $output = [System.Text.StringBuilder]::new()
  [void]$output.AppendLine('  ____________________________________________________________________________  ')
  [void]$output.AppendLine(' / ___\                                                                       \ ')
  [void]$output.AppendLine('| /    |                                                                       |')
  [void]$output.AppendLine('||     |                                                                       |')
  [void]$output.AppendLine('||     |                                                                       |')
  [void]$output.AppendLine('| \___/_______________________________________________________________________/ ')
  [void]$output.AppendLine('|                                                                       |       ')
  $ParagraphNumber = 1
  foreach ($pg in ($message -split "\n")) {
      $msg = $pg.ToCharArray()
      $sln = 0
      foreach ($ln in (0..($msg.count-1))) {
          $msgb = $msg[$sln..$ln] -join '' -replace "^\s",""
          if ( $msgb.length -gt ($charcount) ) {
              [string]$replace_text = $msg[$sln..($ln-1)] -join '' -replace "^\s",""
              $sb_line = [System.Text.StringBuilder]::new()
              [void]$sb_line.Append('|                                                                       |       ')
              [void]$sb_line.Remove($LineStart,$replace_text.Length)
              [void]$sb_line.Insert($LineStart,$replace_text)
              [void]$output.AppendLine($sb_line.ToString())
              $sln = $ln
          }
      }
      $sb_line = [System.Text.StringBuilder]::new()
      [void]$sb_line.Append('|                                                                       |       ')
      [void]$sb_line.Remove($LineStart,$msgb.Length)
      [void]$sb_line.Insert($LineStart,$msgb)
      [void]$output.AppendLine($sb_line.ToString())
      $ParagraphNumber++
  }
  [void]$output.AppendLine('|  _____________________________________________________________________|_____  ')
  [void]$output.AppendLine('| /   \                                                                       \ ')
  [void]$output.AppendLine('||     |                                                                       |')
  [void]$output.AppendLine('||     |                                                                       |')
  [void]$output.AppendLine('| \____|                                                                       |')
  [void]$output.AppendLine(' \____/_______________________________________________________________________/ ')
  return $output.ToString()
}
