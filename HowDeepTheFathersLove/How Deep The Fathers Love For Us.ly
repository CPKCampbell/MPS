\version "2.21.0"
\language "english"

\header {
  title = "How Deep The Father's Love For Us"
  composer = "Stuart Townend"
   poet = "S.T."
  instrument = "TTBB"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
}

\layout {
   #(layout-set-staff-size 18)
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
  \tempo  "Unhurried, reflective " 4 = 100
 \set Staff.printKeyCancellation = ##f
 \partial 4
}

tvi = { \time 6/4 }
tiv = { \time 4/4 }


lead = \relative c' {
  \global
  \clef "treble_8"

 a4   a4. f8 g4 a g f  d2 r4 c |
 c4. f8 f4 a a4. ( g8 ) g2 r4 f a4. f8 g4 a g f |
 d2 r4 c c4. f8 f4 a g4. ( f8 ) f2 r4 c'4 |
  %13
  c4. a8 bf4 c bf a  f2 r4 c' c4. a8 bf4 a  |
  a4. g8 g2 r4 f a4. f8 g4 a g f d2 r4 c |
  c4. f8 f4 a  g4. ( f8 ) f2 r4 a4 a4. f8 g4 a g f |
  d2 r4 c c4. f8 f4 a a4. ( g8 ) g2 r4 f |
  a4. f8 g4 a g f d2 r4 c c4. f8 f4 a |
  g4. ( f8 ) f2 r4 c' c4. a8 bf4 c bf a |
  f2 r4 c' c4. a8 bf4 a a4. ( g8 ) g2 r4 f a4. f8 g4 a g f d2 r4 c c4. f8 f4 a |
  g4. ( f8 ) f2 r2 |
  %43
  \key g \major R1. r2 r4 d d4. g8 g4 b |
  b4. ( a8 ) a2 r4 g b4. g8 a4 b a g e2 r4 d |
  d4. g8 g4 a8 ( b ) a4. ( g8 ) g2 r4 d' d4. b8 c4 d c b |
  g2 r4 d' d4. b8 c4 b b4. ( a8 ) a2 r4 g |
  b4. g8 a4 b a g e1~ e2 r4 d d4. g8 g4 b a4. ( g8 ) g1\fermata


}


tenor = \relative c {
  \global
  \clef "treble_8"

  f8\mp ( g ) \tvi c,4 f bf a g f \tiv d2 r4 f |
  c4 f bf a \tvi f4. ( g8 ) g2 r4 f8 ( g ) c,4 f bf a g f \tiv |
  d2 r4 f8 ( g ) c,4 f bf a \tvi g4. ( f8 ) f2 r4  c'4 |
  %13
  c4. a8 bf4 c bf a \tiv f2 r4 c' c4. a8 bf4 a \tvi |
  a4. g8 g2 r4 f a4. f8 g4 a g f \tiv d2 r4 c |
  c4. f8 f4 a \tvi g4. ( f8 ) f2 r4 bf a4. a8 bf4 a bf a \tiv |
  f2 r4 bf a4. bf8 a4 c \tvi bf2 c r4 bf4 |
  a4. a8 bf4 a g a \tiv f2 r4 bf4 a4. a8 a4 f \tvi |
  g8 ( a bf4 ) a2r4 c4 c c c c d c \tiv |
  bf2 r4 bf4 a4. f8 f4 4 \tvi f2 e r |
  r2 r4 f g a \tiv bf2 r4 bf a4. a8 a4 f  \tvi |
  bf2 a r4 a \bar "||"  \key g \major b4. g8 a4 b a g \tiv e2 r4 d d4. g8 g4 b \tvi |
  b4. ( a8 ) a2 r4 g d'4. d8 d4 d d d \tiv c2 r |
  r4 d,4 g a8 ( b ) \tvi a4. ( g8 ) g2 r4 d'4 d4. b8 c4 d c b \tiv |
  g2 r4 d'4 d4. b8 c4 b \tvi b4. ( a8 ) a2 r4 g4 |
  d'4. b8 c4 b g g \tiv g1~ g2 r4 d d4. g8 g4 b \tvi a4. ( g8 ) g1\fermata
  \bar "|."
}




baritone = \relative c' {
  \global

    a4   a4. f8 g4 a g f  d2 r4 c |
 c4. f8 f4 a a4. ( g8 ) g2 r4 f a4. f8 g4 a g f |
 d2 r4 c c4. f8 f4 a g4. ( f8 ) f2 r4 c |
 a'4. f8 g4 a g f d2 r4 c a'4. f8 g4 f |
 f4. c8 c2 r4 f a4. f8 g4 a g f d2 r4 c |
 c4. f8 f4a g4. ( f8 ) f2 r4 d c4. c8 c4 c c c |
d2 r4 c c4. c8 c4 f d2 c r4 d4 |
c4. c8 c4 c c c d2 r4 c c4. c8 c4 c |
d4 ( e ) c2 r4 c a'4. f8 g4 a f f |
d2 r4 f f4. c8 d4 c d2 c r4 f |
a4. f8 g4 a g f d2 r4 c c4. c8 c4 c |
f4 ( e ) c2 r2 \key g \major |
R1. R1 R1 r1 r4 g' b4. g8 a4 b a g e2 r4 d |
d4. g8 g4 a8 ( b ) a4. ( g8 ) g2 r4 d b'4. g8 e4 d e g |
e2 r4 d b'4. g8 e4 g g4. ( d8 ) d2 r4 g |
g4. d8 d4 d e d c1~ c2 r4 d d4. g8 g4 b |
a4. ( g8 ) g1\fermata
}

bass = \relative c {
  \global

   f8\mp ( g ) \tvi c,4 f bf a g f \tiv d2 r4 f |
  c4 f bf a \tvi f4. ( g8 ) g2 r4 f8 ( g ) c,4 f bf a g f \tiv |
  d2 r4 f8 ( g ) c,4 f bf a \tvi g4. ( f8 ) f2 r4  c4 |
  %13
  a'4. f8 g4 a g f d2 r4 c a'4. f8 g4 f |
 f4. c8 c2 r4 f8 ( g ) c,4 f bf a g f d2 r4 f8 ( g ) |
 c,4 f bf a g2 a r4 c,4 f4. f8 f4 f f f |
 bf,2 r4 f' f4. f8 f4 f f2 e r4 c |
 f4. f8 f4 f e f bf,2 r4 d c4. c8 c4 c |
 c2 f r4 c4 f f f f f f |
 bf,2 r4 d c4. c8 c4 c bf2 c r2 |
 r2 r4 f g a bf2 r4 bf a4. a8 a4 f |
 c2 f r2 \key g \major R1. R1 R1 r1 r4  g g4. b8 fs4 g b b c2 r |
 r4 d,g a8 ( b ) a4. ( g8 ) g2 r4 d b'4. g8 e4 d e g |
 e2 r4 d b'4. g8 e4 g g4. ( d8 ) d2 r4 g |
 g4. g8 g4 g c, b c1~ c2 r4 d d4. g8 g4 b |
 a4. ( g8 ) g1\fermata
}

verse = \lyricmode {
  How deep the Fa -- ther's love for us,
how vast be -- yond all mea -- sure,
that He should give His on -- ly Son
to make a wretch His trea -- sure.
How great the pain of sear -- ing loss
The Fa -- ther turns His face a -- way,
as wounds which mar the Cho -- sen One
bring man -- y sons to glo -- ry.
%24
Be -- hold the Man up -- on a cross,
my sin up -- on His shoul -- ders;
a -- shamed, I hear my mock -- ing voice
call out a -- mong the scof -- fers.
%32
It was my sin that held Him there
un -- til it was ac -- com -- plished;
has brought me life
I know that it is fin -- ished.
%43
I will not boast in an -- y -- thing,
no gifts, no pow'r, no wis -- dom;
But I will boast in Je -- sus Christ,
 and res -- ur -- rec -- tion.
%51
Why should I gain from His re -- ward?
I can -- not give an an -- swer;
but this I know with all my heart
His wounds have paid my ran -- som.

}

verseLead = \lyricmode {
  How deep the Fa -- ther's love for us,
how vast be -- yond all mea -- sure,
that He should give His on -- ly Son
to make a wretch His trea -- sure.
How great the pain of sear -- ing loss
The Fa -- ther turns His face a -- way,
as wounds which mar the Cho -- sen One
bring man -- y sons to glo -- ry.
%24
Be -- hold the Man up -- on a cross,
my sin up -- on His shoul -- ders;
a -- shamed, I hear my mock -- ing voice
call out a -- mong the scof -- fers.
%32
It was my sin that held Him there
un -- til it was ac -- com -- plished;
His dy -- ing breath has brought me life
I know that it is fin -- ished.
%43

no gifts, no pow'r, no wis -- dom;
But I will boast in Je -- sus Christ,
His death and res -- ur -- rec -- tion.
%51
Why should I gain from His re -- ward?
I can -- not give an an -- swer;
but this I know with all my heart
His wounds have paid my ran -- som.

}

verseBari = \lyricmode {
 How deep the Fa -- ther's love for us,
how vast be -- yond all mea -- sure,
that He should give His on -- ly Son
to make a wretch His trea -- sure.
How great the pain of sear -- ing loss
The Fa -- ther turns His face a -- way,
as wounds which mar the Cho -- sen One
bring man -- y sons to glo -- ry.
%24
Be -- hold the Man up -- on a cross,
my sin up -- on His shoul -- ders;
a -- shamed, I hear my mock -- ing voice
call out a -- mong the scof -- fers.
%32
It was my sin that held Him there
un -- til it was ac -- com -- plished;
His dy -- ing breath has brought me life
I know that it is fin -- ished.
%43


But I will boast in Je -- sus Christ,
His death and res -- ur -- rec -- tion.
%51
Why should I gain from His re -- ward?
I can -- not give an an -- swer;
but this I know with all my heart
His wounds have paid my ran -- som.

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
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  \new Lyrics  \lyricsto "lead" \verseLead
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
  \new Lyrics  \lyricsto "tenor" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics  \lyricsto "baritone" \verseBari
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

