\version "2.21.0"

\language "english"

\header {
  title = "Can't Help Falling In Love"
  instrument = "TTBB"
  composer = "Weiss Peretti, Creatore"
  arranger = "Emerson"
  tagline = ""
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
  \tempo "Moderato" 4=72
}

lead = \relative c {
  \global
  \clef "treble_8"
  R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
  ef2. r4 ef2 bf' ef,2. \tuplet 3/2 { r8 f g } |
  af2 g4. ( f8 ) g ( f4.~ f4 ) \tuplet 3/2 { r8 r bf, } c2 d |
  ef4 r \tuplet 3/2 { f g af } g2 f ef2. r4 |
  %19
  d8 g~ \tuplet 3/2 { g bf d } c2 d,8 g~ \tuplet 3/2 { g bf d } c2 |
  bf4 bf~ bf8 g bf g af2. r4 ef2 bf' |
  ef,2. \tuplet 3/2 { r8 f g } af2 g f2. \tuplet 3/2 { r8 r bf, } |
}


tenor = \relative c {
  \global
  \clef "treble_8"
  R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
  g2. r4 ef'2 d c2 ( bf4 ) \tuplet 3/2 { r8 bf bf } |
  c2 bf bf2. \tuplet 3/2 { r8 r bf } af2 bf |
  c4 r \tuplet 3/2 { af bf c  } bf2 bf g2. r4 |
%19
d8 d~ \tuplet 3/2 { d d d } ef4 ( d ) d8 d~ \tuplet 3/2 { d d d } d4 ( c ) bf8 bf~ \tuplet 3/2 { bf bf bf } c2 |
bf4 bf ( df8 df df df ) c2. r4ef,2 bf' |
ef,2. \tuplet 3/2 { r8 f g  } af2 g f2. \tuplet 3/2 {  r8 r bf } |
}


baritone = \relative c {
  \global
  R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
  ef2. r4 ef2 f ef2. \tuplet 3/2 { r8 f ef } |
  ef2 ef ef8 ( d4.~ d4 ) \tuplet 3/2 { r8 r bf } c2 d |
  ef4 r \tuplet 3/2 { c ef ef } ef2 d bf2. r4 |
%19
d8 g~ \tuplet 3/2 { g g g } a2 d,8 g~ \tuplet 3/2 { g g g } a2
d,8 d~ \tuplet 3/2 { d d d  } ef4 ( f ) |
d4 f ( e8 ) e e e ef2 ( d4 ) r4 ef2 bf' |
ef,2. \tuplet 3/2 { r8 f g } af2 g f2. \tuplet 3/2 { r8 r bf, } |

}

bass = \relative c {
  \global
  R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
g2. r4 ef'2 d c2 ( bf4 ) \tuplet 3/2 { r8 bf bf } |
  c2 bf bf2. \tuplet 3/2 { r8 r bf } af2 f |
  g4 r \tuplet 3/2 { f g af } g2f ef2. r4 |
}

verse = \lyricmode {
  % Lyrics follow here.

}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "lead" \new Voice = "lead" { \lead }
     \new Staff = "baritone" \new Voice = "baritone" { \baritone }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
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

%{
right = \relative c'' {
  \global
  % Music follows here.

}

left = \relative c' {
  \global
  % Music follows here.

}

%}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "lead" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
>>
%{
pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>
%}
\score {
  <<
    \choirPart
    %   \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "lead sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "lead sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

