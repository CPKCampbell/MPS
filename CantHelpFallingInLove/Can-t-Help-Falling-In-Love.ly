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
  % Music follows here.

}


tenor = \relative c {
  \global
   \clef "treble_8"
   R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |


}


baritone = \relative c {
  \global
   R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |

}

bass = \relative c {
  \global
  R1*2 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |

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

