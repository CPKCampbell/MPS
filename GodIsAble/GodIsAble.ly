\version "2.21.0"
\language "english"

\header {
  title = "God Is Able"
  composer = "Mosie Lister"
  poet = "Mosie Lister"
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
  \key f \major
    \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = #'(1 1 1 1)	

  \tempo "With assurance " 4 = 120
}

tenor = \relative c' {
  \global
  a8 8 8 gs8 a4 a bf8 8 4 8 8 4 |
  a1~ a2. r4 a8 8 4 4 4 |
c4 4 8 4 8~ 1~ 2 r4 r8 c |
d8 8 4 4 4 4 8 e8~ e4 r f8 8 4 c4 8 8 |
cs8 8 e8 d~ d4 r4 b8 8 8 8 4 c4 |
d4 8 8 d8( c ) d4 e1 R1 |
%21
f4\mark \markup { \musicglyph "scripts.segno" } d4 c ( a ) f'8 d4 c8~ c4 r4 r4 c bf bf |
c8 bf4 a8~ a4 r4 r d4 cs8 8 8 8 |
%27
d4 a8 d~ d2 b4 r d8 d4 f8~ f1( e2 ) r2 |
%30
r8 f8 8 8 4 c4 |
f8 d4 c8~ c2 r4 bf bf4 bf |

}

lead = \relative c' {
  \global
  f,8 8 8 d8 f4 4 af8 g f4 8 d8 f4 |
  f1~ 2. r4 f8 8 e4 f f |
g4 4 8 4 a8~ 1~ 2 r4 r8 a8 |
bf8 8 4 4 4 4 4 c8 c~ c4 r4 d8 8 c4 a8 8 |
a8 8 8 8~ 4 r4 g8 8 8 8 4 a4 |
b4 8 8 b8( a ) b4 c1 R1 |
%21
c4 bf a( f ) c'8 bf4 a8~ 4 r4 r af4 g f |
af8 g4 f8~ 4 r4 r a4 8 8 8 8 |
%27
a8( g ) f a~ a2 g4 r b8 4  c8~ 1~ 2 r2 |
%30
r8 c8 8 8 4 a4 |
c8 bf4 a8~ 2 r4 f g f |

}

baritone = \relative c {
  \global
 c8 8 8 8 4 4 d8 8 4 8 f8 d4 |
 c1~ 2. r4 f8 8 g4 f f |
e4 4 8 4 f8~ f1~ f2 r4 r8 f8 |
f8 8 4 4 4 4 8 g8~ g4 r4 a8 8 4 f4 8 8 |
e8 8 g8 f8~ f4 r4 d8 8 8 8 4 e4 |
f4 8 8 f8( e ) f4 g1  R1 |
%21
a4\f f f2 a8 g4 f8~ f4 r r f4 d d |
ef8 d4 c8~ 4 r r f4 e8 8 8 8 |
%27
f8( e ) d f~ f2 d4 r g8 4 8~ g1( bf2 ) r2 |
%30
r8 a8 8 8 4 4 |
a8 f4 a8~ 2 r4 d,4 4 4 |


}

bass = \relative c {
  \global
 f,8 8 8 8 4 4 bf8 8 4 8 8 4 |
 f1~ 2. r4 d'8 8 cs4 d d |
c4 4 8 4 f,8~ f1~ f2 r4 r8 f8 |
bf8 8 4 4 4 g4 8 c8~ c4 r4 f8 8 4 4 f,8 8 |
a8 b cs d~ d4 r4 g,8 8 8 8 4 4 |
g4 8 8 4 4 c1 r4 c8\f bf a( c ) d4 |
f4 4 f,2 8 f4 f8~ f8 f8 g a bf4 4 4 4 |
f8 4 f8~ 8 8 a8 c d4 4 a8 8 8 8 |
%27
d4 8 8~ 2 g,4 r g8 4 c8~ 1~ 2 r8 c8 d c |
%30 f4 8 8 4 4 |
f8 4 8~ 4 c4 bf2 4 4 |

}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

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

