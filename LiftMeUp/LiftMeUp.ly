\version "2.21.0"
\language "english"

\header {
  title = "Lift Me Up"
  composer = "Neil Johnson"
  instrument = "TBB"
}
#(set-global-staff-size 18)

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
  %\partial 2
  R1*3 r2
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
  bf4\mf bf bf bf  c4  c8 a~ a4 a |
  bf4 bf bf bf8 c~ c2 r4 c bf bf bf bf |
  c4 c c c d\f d d8 d4 e8~ e1 r2 c4 bf |
  a2 a4 a8 c~ c4 c c c bf2 bf4 bf8 bf~ bf4 c \breathe c bf |
  a2 a4 a8 c~ c4 c c c b1~ b2 c4 bf |
  a2 a4 a8 c~ c4 c c c bf bf bf bf8 bf~ bf4 a a bf |
  a4 a c8 c4 d8~ d4 c4 c a bf2 bf4. a8~ a2 r2 |
  R1*3 r2 a4 bf |
  c8 c4. c4 c d8 d4. bf4 a8 g~ g1 r2 c4 bf |
  a2 a4 a8 c~ c4 c c c bf bf bf bf8 bf~ bf4 a a bf |
  a4 a c8 c4 d8~ d4 c c a bf2 f4. a8~
  a2 c4 bf a1~ a4 r a a |
  bf1 ( c4 ) r c d <f c>1~ q~ q~ q4 r r2
  \bar "|."

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
  \bar "|."
}

bass = \relative c {
  \global
  c4\mp d c2 c4 d8 ef~ ef4 ef ef ef |
  d2 d4 d8 d~ d4 c c d c2 c4 c8 f~
  f4 f f f f1 ( e2 ) c4\f d c2 c4 d8 ef~ ef4 ef ef ef d d d d8 d~ d4 c c d |
  c4 c f8 f4 f8~ f4 f f c d2 d c2\fermata c4\fermata d\fermata
  %21
  \time 2/2
  c2 c4 d8 ef~ ef4 ef ef ef d2 d4 d8 d~ d4 c c d |
  c2 c4 c8 f~ f4 f f f f1 ( e2 ) c4\mf d |
  c2 c4 d8 ef~ ef4 ef ef ef d4 d d4 d8 d~ d4 c c d |
  c4 c f8 f4 f8~ f4 f f c d2 d4. c8~ c2 r2 |
  R1*7 r2 c4\f d c2 c4 d8 ef~ ef4 ef ef ef |
  d4 d d d8 d~ d4 c c d c c f8 f4 f8~ f4 f f c |
  d2 d4. c8~ c2 r2 d4\mp d f8 g4 a8~ a2. a4 |
  a4 g g f8 g~ g1 d4 d f g a a a a |
  a4 g g8 f4 g8~ ( g f d4 ) r2 d4 d f g a g8 f~ f4 f |
  d4 d f g8 a~ a2 r4 a\crescTextCresc g g g g |
  a4 a a a f\f f f8 f4 g8~ g1 r2 c,4 d |
  c2 c4 d8 ef~ ef4 ef ef ef d2 d4 d8 d~ d4 c \breathe c d |
  c2 c4 c8 f~ f4 f f f f1 ( e2 ) c4 d |
  c2 c4 d8 ef~ ef4 ef ef ef d d d d8 d~ d4 c c d |
  c4 c f8 f4 f8~ f4 f f c d2 d4. c8~ c2 r2 |
  R1*7 r2 c4 d |
  c2 c4 d8 ef~ ef4 ef ef d d d d d8 d~ d4 c c d |
  c4 c f8 f4 f8~ f4 f f c d2 d4. c8~
  c2 c4 d c1~ c4 r c d |
  d1 ( e4) r e e f1~ f~ f~ f4 r r2
  \bar "|."
}

verse = \lyricmode {
  Lift me up in the morn -- in',
  lift me up in the ev' -- nin',
  take me home to the prom -- ised land a -- bove
  Where my soul can be rest -- ed
  from this trial and trib -- u -- la -- tion,
  and my days for -- ev -- er af -- ter will be filled with love.
  %

}

AllMyDays = \lyricmode {  All my days for -- ev -- er af -- ter, I'll be loved, I'll be loved }
When = \lyricmode { When my spir -- it leaves this bod -- y for the sky }
AndGoes = \lyricmode {
  And goes home on the train that's gon -- na take me up to glo -- ry,
  where my days for ev -- er af -- ter will be filled with love
}
IveBeen = \lyricmode {
  I've been feel -- in' down, I don't know what to do.
  All day long I work and yet my work is nev -- er through.
}

Preacher = \lyricmode {
  Preach -- er says a bet -- ter life is just a -- round the bend,
  a life where all my pain will cease
  and all my trou -- bles end.
}

lift = \lyricmode { Lift me up, __  lift me up, __  lift me up! __ }
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
  } \lyricsto "tenor" { \verse \verse \When \AndGoes \Preacher \verse \When \AndGoes \lift }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" {
    \verse \verse \AllMyDays \AndGoes \Preacher \verse \AllMyDays \AndGoes \lift }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
  \new Lyrics \lyricsto "bass" {
       \verse \verse \AndGoes \IveBeen \Preacher \verse  \AndGoes \lift }
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

