\version "2.21.0"
\language "english"

\pointAndClickOff

\header {
  title = "Blessed Assurance"
  composer = "Phoebe L. Knapp, 1873"
  poet = "Frances J. Crosby, 1873"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  systems-per-page = #4
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \major
  \time 9/8
  \partial 4.
}

bb= { \bar "" \break }
tenor = \relative c' {
  \global
  \partial 8*3
  a8 g fs a4. a  b8 fs g |
  fs2. a8 a a |
  a4. a4 a8 d cs b |
  cs2. \bb
  a8 g fs a4. a b8 fs g fs2. fs8 g a b4. g fs8 g e fs2. \bar "||" \break
  % refrain
  \partial 4. d'8 d d a4. d d8 d d d2. d8 d d d4. d e8 e e  |
  e2. \bb
  a,8 b cs d4.d d8 d d d2. a8 a a b4. g fs8. g16 e8 fs2.
  \bar "|."


}

lead = \relative c {
  \global
  fs8 e d a'4. a g8 a b a2. a8 fs a d4. cs4 cs8 b a gs a2. fs8 e d  |
  a'4. a g8 a b a2. d,8 e fs g4. e d8 e cs d2.
  % refrain
  a'8 a a d4. a b8 b b a2. a8 a a b4. d cs8 cs b cs2.
  cs8 d e d4. a b8 a b a2. d,8 e fs g4. e d8. e16 cs8 d2.

}

baritone = \relative c {
  \global
  d8 d d fs4. fs d8 d d d2. fs8 d fs fs4. e4 e8 e e e e2. \bb
  d8 d d fs4. fs d8 d d d2. d8 d d d4. b d8 cs a a2.
  % refrain
  fs'8 fs fs fs4. fs g8 g g fs2. fs8 fs fs g4. a a8 a gs a2. \bb
  g8 g g fs4. fs g8 fs g fs2. d8 d d d4. b d8. cs16 a8 a2.
}

bass = \relative c {
  \global
  d8 d d d4. d d8 d d d2. d8 d d d4. e4 e8 e e e a,2.
  d8 d d d4. d d8 d d d2. d8 d d g,4. g a8 a a d2.
  % refrian
  d8 d d d4. d g8 g g d2. d8 d d g4. g e8 e e a2.
  a8 a a d,4. d d8 d d d2. fs8 e d g,4. g a8. a16 a8 d2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  Bless -- èd as -- sur -- ance, Je -- sus is mine!
  O what a fore -- taste of glo -- ry di -- vine!
  Heir of sal -- va -- tion, pur -- chase of God,
  Born of His Spir -- it, washed in His blood.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  Per -- fect sub -- mis -- sion, per -- fect de -- light,
  Vis -- ions of rap -- ture now burst on my sight;
  An -- gels des -- cend -- ing bring from a -- bove
  Ech -- oes of mer -- cy, whis -- pers of love.

}

verseThree = \lyricmode {
  \set stanza = "3."
  Per -- fect sub -- mis -- sion, all is at rest
  I in my Sa -- vior am hap -- py and blest,
  Watch -- ing and wait -- ing, look -- ing a -- bove,
  Filled with His good -- ness, lost in His love.

}

refrain = \lyricmode {
  This is my sto -- ry, this is my song,
  Prais -- ing my Sa -- vior, all the day long;
  This is my sto -- ry, this is my song,
  Prais -- ing my Sa -- vior, all the day long.
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
    \new Lyrics  \lyricsto "tenor1" \verseOne
    \new Lyrics  \lyricsto "tenor1" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor1" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      %     shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = #CENTER
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    }
  }
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

