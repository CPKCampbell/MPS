\version "2.21.0"
% automatically converted by musicxml2ly from /work/colin/music/MPS/ThoughOurSins/Though Your Sins Be as Scarlet.xml
%\pointAndClickOff

%\include "articulate.ly"

%% additional definitions required by the score:
\language "english"


\header {
  copyright =  "Public Domain"
  encodingdate =  "2018-02-01"
  title =  "Though Our Sins Be as Scarlet"
  encodingsoftware =  "MuseScore 2.0.2"
  composer =  "William Howard Doane"
  poet =  "Frances Jane (Fanny) Crosby, 1887"
  tagline = ""
}

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}

global = {
  \key af \major
  \time  3/4
  \partial 4
}

lead =  \relative ef' {
 \global
   ef8. ^ "Duet"  ef16 ^ "Gently"  | % 2
   ef2 \times 2/3 {
     c8 (  df )  ef
  }
  | % 3
   f4  ef  ef8.  af16 | % 4
   g8.  af16  g4  f | % 5
   ef2  ef8.  ef16 | % 6
   ef2 \times 2/3 {
     c8 (  df )  ef
  }
  | % 7
   f4  ef  ef8.  af16 | % 8
   g8.  af16  g4  bf | % 9
   af2 \times 2/3 {
     <df, ef>8 ^ "Quartet"  <df f>  <df ef>
  }
  | \barNumberCheck #9
   <df bf'>2 ~ ~ \times 2/3 {
     <df bf'>8  <ef c'>  <df bf'>
  }
  | % 11
   <c af'>4  <c af'>  af'8  bf | % 12
   c2  c,4 | % 13
   <c f>2  ef8. ^ "Duet"  ef16 | % 14
   ef2 \times 2/3 {
     c8 (  df )  ef
  }
  | % 15
   f4  ef  <ef c'>8. ^ "Quartet"  <ef c'>16
  | % 16
   <ef c'>2 \times 2/3 {
     <c af'>8 (  <df bf'> )  <ef c'>
  }
  | % 17
   <f df'>4  <ef c'>  <ef bf'>8  <ef af>
  | % 18
   <f af>4.  <e g>8  <f af>8.  <df f>16 | % 19
   <c ef>2 _\f  <c ef>8  <c ef> |
  \barNumberCheck #19
   <bf ef>4.  <c ef>8  <df ef>8.  <bf ef>16
  | % 21
   <c ef>2 \bar "|."
}

leadLyricsOne =  \lyricmode {
  \set stanza = "1."
  Though our sins be as scar -- let,
they shall be as white as snow;
though our sins be as scar -- let,
they shall be as white as snow.
Though they be red _  like crim -- son,
They shall be as wool.
Though our sins be as scar -- let,
though our sins be as scar -- let,
they shall be as white as snow,
they shall be as white as snow
}

leadLyricsTwo =  \lyricmode {
  \set stanza = "2."
 Hear the voice that en -- treats you,
O re -- turn ye un -- to God!
Hear the voice that en -- treats you,
O re -- turn ye un -- to God!
He is of great _ com -- pas -- sion,
and of won -- drous love.
Hear the voice that en -- treats you,
hear the voice that en -- treats you,
O re -- turn ye un -- to God!
O re -- turn ye un -- to God!
}

leadLyricsThree =  \lyricmode {
  \set stanza = "3."
 He'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more:
he'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more.
“Look un -- to me, _ ye peo -- ple,”
saith the Lord your God.
He'll for -- give your trans -- gres -- sions,
he'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more,
and re -- mem -- ber them no more.

}

baritone =  \relative af' {
   \global
   s2*9 s2*7  af8
   bf8  c2  c,4 s4*15 s4*11 \bar "|."
}


tenor =  \relative af {
   \global
    \clef bass
   <af c>8.  <af c>16  | % 2
   <af c>2 \times 2/3 {
     af8 ( ~  <af bf> )  <af c>
  }
  | % 3
   <af df>4  <af c>  <af, c'>8.
  <af c'>16 | % 4
   <ef' bf'>8.  <ef c'>16  <ef bf'>4
   <ef df'>4 | % 5
   <af c>2  <af c>8.  <af c>16 | % 6
   <af c>2 \times 2/3 {
     af8 ( ~  <af bf> )  <af c>
  }
  | % 7
   <af df>4  <af c>  <af, c'>8.
  <af c'>16 | % 8
   <ef' bf'>8.  <ef c'>16  <ef bf'>4
   <ef df'>4 | % 9
   <af, c'>2 \times 2/3 {
     <ef' g>8  <ef af>  <ef g>
  }
  | \barNumberCheck #10
   ef4 \times 2/3 {
     ef8  ef  ef
  }
  \times 2/3  {
     <ef g>4  <df f>8
  }
  | % 11
   <af af'>4  <af af'>  <af af'>8
   <bf bf'>8 | % 12
   <c c'>2  <c bf'>4 | % 13
   <f af>2  <g df'>8.  <g df'>16 | % 14
   <af c>2 \times 2/3 {
     af8 ( ~  <af bf> )  <af c>
  }
  | % 15
   <af df>4  <af c>  <af, af'>8.
  <af af'>16 | % 16
   <af af'>2 \times 2/3 {
     <af af'>4  <af af'>8
  }
  | % 17
   <af af'>4  <af af'>  <c af'>8
  <c af'>8 | % 18
   <df af'>4.  <df af'>8  <df af'>8.
   <df af'>16 | % 19
   <af af'>2  <af af'>8  <af af'> |
  \barNumberCheck #20
   <ef' g>4.  <ef af>8  <ef bf'>8.
   <ef g>16 | % 21
   <af, af'>2 \bar "|."
}

bass =  \relative g {
  \global
   \clef bass
  s2*9 s4*9  g2 ~ s1
  s2*9 s4*11 \bar "|."
}


% The score definition
\score {
  <<

    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "lead" {  \voiceOne \lead }
        \new Lyrics \lyricsto "lead" {  \leadLyricsOne }
        \new Lyrics \lyricsto "lead" {  \leadLyricsTwo }
        \new Lyrics \lyricsto "lead" {  \leadLyricsThree }
        \context Voice = "baritone" {  \voiceTwo \baritone }

      >>
    >>
    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "tenor" {  \voiceOne \tenor }
        \context Voice = "bass" {  \voiceTwo \bass }
      >>
    >>

  >>
  \layout {}
}
\score {
  \unfoldRepeats  {

    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "lead" {  \voiceOne \lead }
        \new Lyrics \lyricsto "lead" { \set stanza = "1." \leadLyricsOne }
        \new Lyrics \lyricsto "lead" { \set stanza = "2." \leadLyricsTwo }
        \new Lyrics \lyricsto "lead" { \set stanza = "3." \leadLyricsThree }
        \context Voice = "baritone" {  \voiceTwo \baritone }

      >>
    >>
    \new Staff
    \clef bass
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "tenor" {  \voiceOne \tenor }
        \context Voice = "bass" {  \voiceTwo \bass }
      >>
    >>

  }
  \midi {\tempo 4 = 100 }
}

