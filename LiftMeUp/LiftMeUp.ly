\version "2.21.0"
\language "english"

\header {
  title = "Lift Me Up"
  composer = "Neil Johnson"
  instrument = "TBB"
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=92
 \partial 2
}

lead = \relative c'' {
  \global
  \clef "treble_8"
 R1*3 r2

}


tenor = \relative c' {
  \global
   \clef "treble_8"
 c4 bf a2 a4 a8 c~ c4 c c c |
 bf2 bf4 bf8 bf~ bf4 c c bf a2 a4 a8 c~
 c4 c c c bf1~ bf2 c4\f bf a2 a4 a8 c~
 c4 c c c bf bf bf bf8 bf~ bf4 a a bf |
 a4 a c8 c4 d8~ d4 c c a bf2 bf a\fermata c4\fermata bf\fermata |
 \bar "||" \time 2/2 \tempo  "faster" 2=92
 %21
 a2 a4 a8 c~ c4 c c c bf2 bf4 bf8 bf~ bf4 a c bf |
 a2 a4 a8 c~ c4 c c c bf1~ bf2 c4\mf bf |
 a2 a4 a8 c~ c4 c c c bf bf bf bf8 bf~ bf4 a a bf |
 a4 a c8 c4 d8~ d4 c4 c a bf2 bf4. a8~ a2 r2 |
 %37
 R1*3 r2 a4\f bf c8 c4. c4 c d8 c4. bf4 a8 g~ g1 |
 r2 c4 bf a2 a4 a8 c~ c4 c c c |
 bf4 bf bf bf8 bf~ bf4 a a bf a a c8 c4 d8~ d4 c4 c a |
 bf2 bf4. a8 ~ a2 r2 |
 %53
 R1*8
 % 61
 bf4\mf bf bf bf \hideNotes \appoggiatura bf  \unHideNotes c4  c8 a~ a4 a |
 bf4 bf bf bf8 c~ c2 r4 c bf bf bf bf |
 c4 c c c d\f d d8 d4 e8~ e1 r2 c4 bf |
 a2 a4 a8 c~ c4 c c c bf2 bf4 bf8 bf~ bf4 c \breathe c bf |
 a2 a4 a8 c~ c4 c c c b1~ b2 c4 bf |
 a2 a4 a8 c~ c4 c c c bf bf bf bf8 bf~ bf4 a a bf |
 a4 a c8 c4 d8~ d4 c4 c a bf2 bf4. a8~ a2 r2 |


}


baritone = \relative c {
  \global
c4\mp d f2 f4 f8 a~ a4 a g f
f2 f4 f8 d~ d4 c c d f2 f4 f8 a~ |
a4 a g f g1~ g2 c,4\f d f2 f4 f8 a~
a4 a g f g f f f8 d~ d4 c c d |
f4 f a8 a4 bf8~ bf4 bf a8 ( g ) f4 f2 f f2\fermata c4\fermata d \fermata |
%21
f2 f4 f8 a~ a4 a g f f2 f4 f8 d~ d4 c c d |
f2 f4 f8 a~ a4 a g f g1~ g2 c,4\mf d |
f2 f4 f8 a~ a4 a g f g f f f8 d~ d4 c c d |
f4 f a8 a4 bf8~ bf4 bf a8 ( g ) f4 f2 f4. f8~ f2 g4 a |
bf4 bf bf8 bf4 bf8~ bf4 bf c c a2 a8 g4 f8~ f2 r2 |
R1*3 r2 c4\f d f2 f4 f8 a~ a4 a g f |
g4 f f f8 d~ d4 c c d f f a8 a4 bf8~ bf4 bf a8 ( g ) f4 |
f2 f4.  f8~ f2 r2 R1*8 |
%61
d4 d f g a g8 f~ f4 f |
d4 d f g8 a~ a2 r4 a\crescTextCresc g g g g |
a4 a a a bf\f bf bf8 c4 c8~ c1 r2 c,4 d |
f2 f4 f8 a~ a4 a g f f2 f4 f8 d~ d4 c\breathe c d |
f2 f4 f8 a~ a4 a g f g1~ g2 c,4 d |
f2 f4 f8 a~ a4 a g f g f f f8 d~ d4 c c d |
f4 f a8 a4 bf8~ bf4 bf a8 ( g ) f4 f2 f4. f8~ f2 g4 a |
bf4 bf bf8 bf4 bf8~ bf4 bf c c a2 a8 g4 f8~ f2 r2 |
R1*3 r2 c4 d |
f2 f4 f8 a~ a4 a g f g f f f8 d~ d4 c c d |
f4 f a8 a4 bf8~ bf4 bf a8 ( g ) f4 f2 f4. f8~
f2 c4 d f1~ f4 r f f |
g1 ( bf4 ) r c bf a1~ a~ a~ a4 r r2

}

bass = \relative c {
  \global
  % Music follows here.

}

verse = \lyricmode {
 Lift me up in the morn -- in',
 lift me up in the ev' -- nin',
 take me home to the prom -- ised land a -- bove
 Where my soul can be rest -- ed
 from this trial and trib -- u -- la -- tion,
 and my days for -- ev -- er af -- ter will be filled with love.
 %
 Lift me up in the morn -- in',
 lift me up in the ev' -- nin',
 take me home to the prom -- ised land a -- bove
 Where my soul can be rest -- ed
 from this trial and trib -- u -- la -- tion,
 and my days for -- ev -- er af -- ter will be filled with love.

}
%{
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
%}
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

%{ Rehearsal MIDI files:
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
%}

