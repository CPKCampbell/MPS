\version "2.21.0"
\language "english"

\header {
  title = "Day By Day"
  composer = "Oskar Ahnfelt"
  poet = "Karolina W. Sandell-Berg."
  tagline = ""
}

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d\major
  \time 4/4
  \partial 4
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
 a8 [  a ] | % 2
   a4.  a8  a [  a  a  a
  ] | % 3
   b4  b2  b8 [  b ] | % 4
   a4.  a8  a [  a  a  a
  ] | % 5
   a2.  a8 [  a ] | % 6
   a4.  a8  a [  a  a  a
  ] | % 7
   b4  b2  b8 [  b ] | % 8
   a4.  a8  a [  a  a  a
  ] | % 9
   a2.  d8 [  d ] |
   d4.  d8  d [  d  d
   d8 ] | % 11
   d4  d2  e8 [  ds ] | % 12
   e4.  e8  e [  cs  d
   e8 ] | % 13
   d2.  cs8 [  cs ] | % 14
   b4.  b8  c [  c  c
   c8 ] | % 15
   b4  b2  b8 [  b ] | % 16
   a4.  a8  a4  a | % 17
   a2.
  }
  \bar "|."
}

lead = \relative c {
  \global
\repeat volta 3 {
  fs8 [  e ] | % 2
  d4.  d8  d [  d  e  fs  ] | % 3
  fs4  e2  e8 [  d ] | % 4
  cs4.  cs8  cs [  d  e
  cs8 ] | % 5
  d2.  fs8 [  e ] | % 6
  d4.  d8  d [  d  e  fs
  ] | % 7
  fs4  e2  e8 [  d ] | % 8
  cs4.  cs8  cs [  d  e
  cs8 ] | % 9
  d2.  fs8 [  g ] |
  a4.  a8  a [  a  d   cs8 ] | % 11
  cs4  b2  e,8 [  fs ] | % 12
  g4.  g8  g [  b  a  g   ] | % 13
  fs2.  fs8 [  e ] | % 14
  d4.  d8  d [  d  e  fs   ] | % 15
  fs4  e2  e8 [  d ] | % 16
  cs4.  cs8  cs [  d  e
  cs8 ] | % 17
  d2.
}
\bar "|."
}


baritone = \relative c {
  \global
 \repeat volta 3 {
  a'8 [  g ] | % 2
   fs4.  fs8  fs [  fs
  g8  a ] | % 3
   a4  g2  g8 [  fs ] | % 4
   e4.  e8  e [  fs  g
   e8 ] | % 5
   fs2.  a8 [  g ] | % 6
   fs4.  fs8  fs [  fs
  g8  a ] | % 7
   a4  g2  g8 [  fs ] | % 8
   e4.  e8  e [  fs  g
   e8 ] | % 9
   fs2.  a8 [  a ] |
   a4.  a8  a [  a  a
   a8 ] | % 11
   a4  g2  b8 [  b ] | % 12
   b4.  b8  a [  e  a
   a8 ] | % 13
   a2.  a8 [  g ] | % 14
   fs4.  fs8  fs [  fs
  g8  a ] | % 15
   a4  g2  e8 [  e ] | % 16
   e4.  e8  e [  fs ]
  g4 | % 17
   fs2.
 }
 \bar "|."

}

bass = \relative c {
  \global
  \repeat volta 3 {
  d8 [  d ] | % 2
   d4.  d8  d [  d  d
   d8 ] | % 3
   g,4  g2  g8 [  g ] | % 4
   a4.  a8  a [  a  a  a
  ] | % 5
   d2.  d8 [  d ] | % 6
   d4.  d8  d [  d  d
   d8 ] | % 7
   g,4  g2  g8 [  g ] | % 8
   a4.  a8  a [  a  a  a
  ] | % 9
   d2.  d8 [  e ] |
   fs4.  fs8  fs [  fs  fs,
   fs8 ] | % 11
   g4  g2  g'8 [  fs ] | % 12
   e4.  d8  cs [  a  b
   cs8 ] | % 13
   d2.  a8 [  a ] | % 14
   b4.  b8  a [  a  d  d
  ] | % 15
   g,4  g2  gs8 [  gs ] | % 16
   a4.  a8  a4  a | % 17
   d2.
  }
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  Day  by  day  and  with  each  pass -- ing  mo -- ment,
  strength  I  find  to  meet  my  tri -- als  there;
  Trust -- ing  in  my  Fa -- ther's  wise  be -- stow -- ment,
  I've  no  cause  for  wor -- ry  or  for  fear.
  He   whose  heart  is  kind  be -- yond  all  mea -- sure
  gives  un -- to  each  day  what  He  deems  best.
  Lov -- ing -- ly,  its  part  of  pain  and  plea -- sure,
  min -- gling  toil  with  peace  and  rest.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
Ev -- ery day the Lord Him -- self is near me
With a spe -- cial mer -- cy for each hour;
All my cares He fain would bear, and cheer me,
He whose name is Coun -- sel -- lor and Power.
The pro -- tec -- tion of His child and trea -- sure
Is a charge that on Him -- self He laid;
As your days, your strength shall be in mea -- sure,
This the pledge to me He made.
}

verseThree = \lyricmode {
  \set stanza = "3."
 Help me then in ev -- ery trib -- u -- la -- tion
 So to trust Thy pro -- mi -- ses, O Lord,
 That I lose not faith's sweet con -- so -- la -- tion
 Of -- fered me with -- in Thy ho -- ly Word.
 Help me, Lord, when toil and trou -- ble meet -- ing,
 E'er to take, as from a Fath -- er's hand,
 One by one, the days, the mo -- ments fleet -- ing,
 Till I reach the prom -- ised land.


}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenor }
     \new Staff = "tenor2" \new Voice = "tenor2" { \lead }
     \new Staff = "bass1" \new Voice = "bass1" { \baritone }
     \new Staff = "bass2" \new Voice = "bass2" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
 %     shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
%      shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verseOne
    \midi { }
  }
}

