\version "2.21.0"
\language "english"

\header {
  title ="Tis Not That I Did Choose Thee"
  composer = "Anonymous, Greek melody"
  poet = "Josiah Conder (1836)"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key ef \major
  \time 4/4
  \partial 4
}

bb = { \bar "||" \break }
tenor = \relative c' {
  \global
  g8 [af] bf4 bf bf bf bf2 g4 g af af f f g2. \bb
  g8 [af] bf4 bf bf bf bf2 g4 g af af f f g2. \bb
  g4 g g bf af g2 bf4 bf bf bf bf bf bf2. \bb
  bf8 [af] g4 g g g af ( bf ) c\fermata af g f bf af g2.
  \bar "|."


}

lead = \relative c {
  \global
  ef8 [ f ] g4 g g g g2 ef4 ef f f d d ef2.
  ef8 [ f ] g4 g g g g2 ef4 ef f f d d ef2.
  bf'4 ef ef d c bf2 g4 g af bf8 [af] g4 af8 [g] f2.
  g8 [af] bf4 bf bf bf c (d) ef c bf af g f ef2.

  \bar "|."
}

baritone = \relative c {
  \global
  ef4 ef ef ef ef ef2 bf4 c c c bf bf bf2. \bb
  ef4 ef ef ef ef ef2 bf4 c c c bf bf bf2. \bb
  ef4 ef ef ef ef ef2 ef4 ef f g8 [f] ef4 f8 [ef] d2. \bb
  ef4 ef ef ef ef ef2 ef4\fermata ef ef d ef d ef2.
  \bar "|."

}

bass = \relative c {
  \global
  ef4 ef ef ef ef ef2 ef4 c af af bf bf ef2.
  ef4 ef ef ef ef ef2 ef4 c af af bf bf ef2.
  ef4 ef ef ef ef ef2 ef4 ef bf bf bf bf bf2.
  ef4 ef ef ef ef af,2 af4 af bf bf bf bf ef2.
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  ‘Tis _ not that I did choose Thee, for, Lord, that could not be;
  This _ heart would still re -- fuse Thee, hadst Thou not cho -- sen me.
  Thou from the sin that stained me hast cleansed and   set me free;
  Of _ old Thou hast or -- dained me, that I should live to Thee.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  ‘Twas _ sov -- ereign mer -- cy called me and taught my o -- pening mind.
  The _ world had else en -- thralled me, to heaven -- ly glo -- ries blind.
  My heart owns non be -- fore Thee, for Thy rich grace I thirst;
  This _ know -- ing, if I love Thee, Thou must have loved me first.

}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

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
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics  \lyricsto "tenor1" \verseOne
    \new Lyrics  \lyricsto "tenor1" { \verseTwo }
    %   \new Lyrics  \lyricsto "tenor1" \verseThree

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
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

