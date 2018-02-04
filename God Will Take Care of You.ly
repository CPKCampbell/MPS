\version "2.21.0"
% automatically converted by musicxml2ly from /work/colin/music/MPS/God Will Take Care of You.xml
%\pointAndClickOff

%\include "articulate.ly"

%% additional definitions required by the score:
\language "english"


\header {
  copyright =  "Public Domain"
  encodingdate =  "2018-01-26"
  title =  "God Will Take Care of You"
  encodingsoftware =  "MuseScore 2.0.2"
  composer =  "Walter Stillman Martin"
  poet =  "Civilla Durfee Martin, 1904"
}


\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
soprano =  \relative bf {
  \clef "treble" \key bf \major \time 6/8 | % 1
   <bf d>8  <c ef>  <cs e>  <d f> (
   <f bf>8 )  <f cs'> | % 2
   <f d'>4  <ef c'>8  <d bf'>4. | % 3
   <ef f>8  <ef a>  <ef g>  <c ef>4
   <ef g>8 | % 4
   <d f>4. (  <bf d> ) | % 5
   <bf d>8  <c ef>  <cs e>  <d f> (
   <f bf>8 )  <f cs'> | % 6
   <f d'>4  <ef c'>8  <d bf'>4. | % 7
   <ef f>8  <ef a>  <ef g>  <ef f>4
   <ef c'>8 | % 8
   <d bf'>2. \bar "||"
   <g bf>4. ^ "Refrain"  <f a>4  <ef g>8 |
  \barNumberCheck #10
   <ef g>4  <d f>8  <d f>4. | % 11
   <d f>8  <f a>  <ef g>  <c ef>4. | % 12
   <c ef>8  <ef g>  <d f>  <bf d>4. | % 13
   <d f>4.  <f bf>4  <f bf>8 | % 14
   c'8 (  bf )  <g c>  <fs d'>4. | % 15
   <g c>8  <g bf>  <ef g>  <d f>4
   a'8 | % 16
   d,8 (  bf  ef  d4. ) \bar
  "|."
}

lead =  \relative bf {
  \clef "treble" \key bf \major \time 6/8 | % 1
   d8   ef   e   f ( bf  )  cs | % 2
   d4   c8  bf4. | % 3
    f8   a   g  ef4  g8 | % 4
    f4. (  d ) | % 5
    d8  ef  e  f ( bf8 )  cs | % 6
   d4   c8  bf4. | % 7
    f8  a  g f4 c'8 | % 8
   bf2. \bar "||"

   <g bf>4. ^ "Refrain"  <f a>4  <ef g>8 |
  \barNumberCheck #10
   <ef g>4  <d f>8  <d f>4. | % 11
   <d f>8  <f a>  <ef g>  <c ef>4. | % 12
   <c ef>8  <ef g>  <d f>  <bf d>4. | % 13
   <d f>4.  <f bf>4  <f bf>8 | % 14
   c'8 (  bf )  <g c>  <fs d'>4. | % 15
   <g c>8  <g bf>  <ef g>  <d f>4
   a'8 | % 16
   d,8 (  bf  ef  d4. ) \bar
  "|."
}

sopranoLyricsOne =  \lyricmode {
 % \set ignoreMelismata = ##t
Be not dis -- mayed what -- e’er be -- tide, God
  will take care of you;  Be -- neath His wings of love
  a -- bide, God will take care of you.



}

sopranoLyricsTwo =  \lyricmode {
%  \set ignoreMelismata = ##t
 Through days of toil when heart doth fail, God will
  take care of you;  When dan -- gers fierce your path
  as -- sail, God will take care of you.



}

sopranoLyricsThree =  \lyricmode {
%  \set ignoreMelismata = ##t
  All you may need He will pro -- vide, God will take
  care of you;  No -- thing you ask will be de --
  nied, God will take care of you.



}

sopranoLyricsFour =  \lyricmode {
 % \set ignoreMelismata = ##t
No mat -- ter what may be the test, God will take care
  of you;  Lean, wear -- y one,  up -- on His
  breast, God will take care of you.



}

alto =  \relative g' {
  \clef "treble" \key bf \major \time 6/8 s1*3 s \bar "||"
  s4*15  g4 s4*5  bf2. \bar "|."
}

tenor =  \relative bf, {
  \clef "bass" \key bf \major \time 6/8 | % 1
   <bf f'>8  <bf f'>  <bf f'>
  bf8 (  d )  <f a> | % 2
   bf4  <f a>8  <bf, f'>4. | % 3
   <f' a>8  <f c'>  <f bf>  <f
  a>4  <f a>8 | % 4
   bf4. (  f ) | % 5
   <bf, f'>8  <bf f'>  <bf f'>
  bf8 (  d )  <f a> | % 6
   bf4  <f a>8  <bf, f'>4. | % 7
   <f' a>8  <f c'>  <f bf>  <f
  a>4  <f a>8 | % 8
   <bf, bf'>2. \bar "||"
   <ef bf'>4.  <ef bf'>4  <ef bf'>8 |
  \barNumberCheck #10
   <bf bf'>4  <bf bf'>8  <bf bf'>4. | % 11
   f'8  f  f  <f a>4. | % 12
   <f a>8  <f a>  f  <bf, f'>4. | % 13
   <bf bf'>4.  <d bf'>4  <d bf'>8 | % 14
   <ef bf'>4  <ef g>8  <d a'>4. | % 15
   <ef g>8  <ef bf'>  <ef bf'>
  <f bf>4  f8 | % 16
   f8 (  d  g  f4. ) \bar "|."
}

tenorLyricsOne =  \lyricmode {
%  \set ignoreMelismata = ##t " "
  " " " " " "  " " " " " " " " " " " " " " " " " " " "
  " " " " " " " "  " " " " " " " " " "  " " " " " " " " " " " " " " " "
  God will take care of you,
  Through ev -- ery day, o’er all the way; He of you,
  God will care of you.

}

bass =  \relative bf {
  \clef "bass" \key bf \major \time 6/8 s4.  bf4 s8
  bf4 s4*5  bf,2. s4.  bf'4 s8  bf4 s1*2
  \bar "||"
  s1.  f8  f  f s8*5  f8 s8*9
  s8*11  f8  bf,2. \bar "|."
}

bassLyricsOne =  \lyricmode {
%  \set ignoreMelismata = ##t
" "
  " " " " " " " " will take care take
}


% The score definition
\score {
  <<

    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "soprano" {  \voiceOne \soprano }
        \new Lyrics \lyricsto "soprano" { \set stanza = "1." \sopranoLyricsOne }
        \new Lyrics \lyricsto "soprano" { \set stanza = "2." \sopranoLyricsTwo }
        \new Lyrics \lyricsto "soprano" { \set stanza = "3." \sopranoLyricsThree }
        \new Lyrics \lyricsto "soprano" { \set stanza = "4." \sopranoLyricsFour }
        \context Voice = "alto" {  \voiceTwo \alto }
      >>
    >>
    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "tenor" {  \voiceOne \tenor }
        \new Lyrics \lyricsto "tenor" { \set stanza = "1." \tenorLyricsOne }
        \context Voice = "bass" {  \voiceTwo \bass }
        \new Lyrics \lyricsto "bass" { \set stanza = "1." \bassLyricsOne }
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
        \context Voice = "soprano" {  \voiceOne \soprano }
        \new Lyrics \lyricsto "soprano" { \set stanza = "1." \sopranoLyricsOne }
        \new Lyrics \lyricsto "soprano" { \set stanza = "2." \sopranoLyricsTwo }
        \new Lyrics \lyricsto "soprano" { \set stanza = "3." \sopranoLyricsThree }
        \new Lyrics \lyricsto "soprano" { \set stanza = "4." \sopranoLyricsFour }
        \context Voice = "alto" {  \voiceTwo \alto }
      >>
    >>
    \new Staff
    <<

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "tenor" {  \voiceOne \tenor }
        \new Lyrics \lyricsto "tenor" { \set stanza = "1." \tenorLyricsOne }
        \context Voice = "bass" {  \voiceTwo \bass }
        \new Lyrics \lyricsto "bass" { \set stanza = "1." \bassLyricsOne }
      >>
    >>

  }
  \midi {\tempo 4 = 100 }
}

