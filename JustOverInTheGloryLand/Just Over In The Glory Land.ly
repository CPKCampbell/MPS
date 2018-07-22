\version "2.21.0"
\language "english"

\header {
  title = "Just Over In The Glory Land"
  composer = "Emmett Sidney Dean"
  poet = "James W. Acuff, 1906"
  copyright = "Courtesy of the Cyber Hymnal"
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
  \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = #CENTER
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
      \override LyricText.self-alignment-X = #LEFT
    }
    }

global = {
  \key af \major
  \time 4/4 \tempo 4=105
  \partial 4
  \autoBeamOff
}

tenor = \relative c {
  \global
  ef8. f16 af4 4 4 ef8. f16 af4 f ef ef f8 af bf af c4 bf |
  bf2. ef,8. f16 af4 af af ef8. f16 af4 f ef ef f8 af bf af c4 bf af2. \bar "" \break
  ef4 c'2~ c8. bf16 af8. bf16 c4 bf af af af2~ af8. g16 af8. bf16 af4 f ef ef f8 af bf af c4 bf
  bf2. ef,4 c'2~ c8. bf16 af8. bf16 c4 bf af af af2~ af8. g16 af8. bf16 af4 f ef ef |
  f8 af bf af c4 bf af2.  \bar "|."
}

lead = \relative c' {
  \global
  % Music follows here.

}

baritone = \relative c {
  \global
  % Music follows here.

}

bass = \relative c {
  \global
  % Music follows here.

}

verseOne = \lyricmode {
  \set stanza = "1."
 I've a home pre -- pared where the saints a -- bide,
 Just o -- ver in the glo -- ry land;
 And I long to be by my Sav -- ior's side,
 Just o -- ver in the glo -- ry land.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

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
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "lead" \new Voice = "lead" { \lead }
     \new Staff = "baritone" \new Voice = "baritone" { \baritone }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.4
       \set Score.midiMaximumVolume = #0.5
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
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
   \new Lyrics  \lyricsto "tenor" \verseOne
    \new Lyrics  \lyricsto "tenor" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor" \verseThree

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
        } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
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
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "trumpet" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "cello" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "bassoon" \verseOne
    \midi { }
  }
}

