\version "2.19.81"
\pointAndClickOff
\language "english"

\header {
  title = "Heavenly Sunlight"
  instrument = "TTBB"
  composer =  "G. H. Cook"
  poet = "H. J. Zelley"
  arranger = "A. L. Page, B. Van Essen"
  tagline = ""
}

\layout {
  #(layout-set-staff-size 18)
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \time 9/8
  \tempo 4.=83
  \partial 4.
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

lead = \relative c {
  \global
  \clef "treble_8"
 c8 d e f4. f a8 g f g4. c c8 d c a4. f a8 g f g4. r4. c,8 d e |
 f4. f a8 g f g4. c c8 d c a4. f g8 g f f4. r4. c'8 c c d4. bf bf8 c d |
 c4. a c8 c c c4. a a8 g f g4. ( c)\fermata c,8 d e f4. f a8 g f g4. c c8 d c |
 a4. f g8 a g f2. r4. |
 r2. a8 bf a e4. a a8 b cs d4. a f8 g a bf2. c8 d c a4. c c8 d c |
 g4. c c8 d c bf4. d c8 d e f4.\breathe r4. c8 c c d4. bf bf8 c d c4. a c8 c c |
 c4. a a8 g f g4. ( c )\fermata c,8 d e f4. f a8 g f g4. c c8 d c a4. f g8 a g f2.\fermata
 \bar "||"  \key g \major r4. |
 d'4. d d d d d d d d c c d d d d d d d8 e d |
 b4. g a8 b a g4~ g16 r r4. d'8 d d e4. c c8 d e d4. b d8 d d d4. b b8 a g |
 a4. ( d )\fermata  d,8 e fs g4. g b8 a g a4. d d8 e d b4. g a8 b a g2.\fermata r4. |
r2. d8 e d b4. g d'8 e d |
c2. c4. ~ c\fermata r4. c'8 c c b2.~ b4. ( c2. ) e8 fs e d2.~ 4.\fermata  \bar "|."
%e4.~ e\fermata r4. d8 d d d2.~ d4.( e2. ) g8 g g g2.~ 4.\fermata \bar "|."
}


tenor = \relative c {
  \global
   \clef "treble_8"
 c8 d e f4. f a8 g f g4. c c8 d c a4. f a8 g f g4. r4. c,8 d e |
 f4. a c8 bf a g4. c a8 g a bf4. bf bf8 bf bf a4. r4. a8 a a bf4. d d8 c bf |
 a4. c bf8 bf bf a4. c b8 b b bf2.\fermata c,8 d e f4. a c8 bf a g4. c a8 g a |
 bf4. bf bf8 bf bf a2.\breathe a8 bf a |
 f4. a2.~ a a8 a a a4. a a8 a a bf2. c8 c c c4. a a8 a a |
 c4. c a8 a a bf4. bf bf8 bf bf a4.\breathe r4. c8 c c bf4. d d8 c bf a4. c bf8 bf bf |
 a4. c b8 b b bf2.\fermata c,8 d e f4. f a8 g f g4. c a8 g a bf4. bf bf8 bf bf |
 a2.\fermata \bar "||"  \key g \major d,8 e fs g4. g b8 a g |
 a4. d d8 e d b4. g b8 a g a2. d,8 e fs g4. g b8 a g a4. d b8 b b |
 g4. e fs8 fs fs d4~ d16 r r4.g8 g g g4. g c8 c c b4. d b8 b b b4. gs g8 a b |
 c2.\fermata d,8 e fs g4. g b8 a g a4. d b8 a b c4. c c8 c c b2.\fermata d8 e d b4. g2.~ g b8 a b |
 c2. e4.~ e\fermata r4. d8 d d d2.~ d4.( e2. ) g8 g g g2.~ 4.\fermata
\bar "|."
 %4.\fermata r4. c8 c c b2.~ b4. ( c2. ) e8 fs e d2.~ 4.\fermata  \bar "|."

}


baritone = \relative c {
  \global
 c8 d e f4. f a8 g f g4. c c8 d c a4. f a8 g f g4. r4. c,8 d e |
 f4. f a8 g f g4. g f8 f f f4. d e8 d e c4. r4. c'8 c c d4. bf bf8 c d |
 c4. a e8 e e f4. f f8 g f f4. ( e)\fermata c8 d e f4. f a8 g f g4. g f8 f f |
 f4. d e8 d e c2. r4. r2. a'8 bf a e4. a a8 a a a4. d, d8 d d d2. g8 g g f4. f f8 f f |
 g4. g f8 f f f4. f e8 e g f4.\breathe r4. c'8 c c d4. bf bf8 c d c4. a e8 e e |
 f4. f e8 e g f4. ( e ) \fermata c8 d e f4. f a8 g f g4. g f8 f f f4. d e8 d e |
 c2.  \bar "||" \key g \major r4.   g'4. g g |
 fs4. fs fs f f f e e  fs g g g fs fs f8 f f |
 e4. c c8 c c b4~ b16 r r4. g'8 g g e4. e g8 g g g4. g a8 a a gs4. e e8 e e |
 g4. ( fs )\fermata d8 e fs g4. g b8 a g a4. a g8 g g g4. e fs8 e fs d2. r4. r2. d8 e d e4. g g8 g g |
 g2. g4.~ 4.\fermata r4. fs8 fs fs g2.~ g4.~ g2. c8 d c b2.~ 4.\fermata |
 \bar "|."

}

bass = \relative c {
  \global
 c8 d e f4. f a8 g f g4. c c8 d c a4. f a8 g f g4. r4. c,8 d e |
 f4. a c8 bf a g4. e ef8 ef ef d4. g c,8 c c f4. r4. a8 a a bf4. d d8 c bf |
 a4. c g8 g g f4. e d8 d d c2.\fermata c8 d e f4. a c8 bf a g4. e ef8 ef ef |
 d4. g c,8 c c f2. \breathe a8 bf a f4. a2.~ a a8 a g
 f4. f d8 e f g4. ( f ) e8 e e f4. f f8 f f |
 e4. e ef8 ef ef d4. d c8 c c f4.\breathe  r4. c'8 c c bf4. d d8 c bf a4. c g8 g g |
 f4. e d8 d d c2.\fermata c8 d e f4. f a8 g f g4. e ef8 ef ef d4. g c,8 c c |
 f2. \bar "||" \key g \major d8 e fs g4. g b8 a g |
 a4. d, d8 e d bf4. g bf8 a g a2. d8
 e fs g4. g b8 a g a4. d, g8 g g |
 c,4. a d8 d d g,2. b8 b b c4. c e8 e e g4. g f8 f f e4. d cs8 cs cs |
 d2.\fermata d8 e fs g4. g b8 a g a4. fs f8 f f e4. a d,8 d d g2.\fermata d8 e d e4. g2.~ g f8 f f |
 e2. a4.~ a\fermata r4. a8 a a g2.~ 4.~ 2. g8 g g g2.~ 4. \fermata\bar "|."
}

verseA = \lyricmode {
  Walk -- ing in sun -- light all of my jour -- ney,
o -- ver the moun -- tains, through the deep vale;
Je -- sus has said, “I’ll nev -- er for -- sake thee”,
prom -- ise di -- vine that nev -- er can fail.

%Refrain:
Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prai -- ses, Je -- sus is mine.
%vs 2
 Shad -- ows a -- round me,
 nev -- er con -- ceal my Sa -- vior and Guide;
He is the light, in Him is no dark -- ness;
ev -- er I’m walk -- ing close by His side.
%refrain
Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prais -- es, Je -- sus is mine.
%vs 3
In the bright sun -- light, ev -- er re -- joic -- ing,
press -- ing my way to man -- sions a -- bove;
sing -- ing His prais -- es glad -- ly I’m walk -- ing,
walk -- ing in sun -- light, sun -- light of love.
% -- [Re -- frain]

Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prai -- ses, Je -- sus is mine.
Sing -- ing His prai -- ses,
sing -- ing His prai -- ses,
Je -- sus is mine,
Je -- sus is mine!

}

verseB = \lyricmode {
  Walk -- ing in sun -- light all of my jour -- ney,
o -- ver the moun -- tains, through the deep vale;
Je -- sus has said, “I’ll nev -- er for -- sake thee”,
prom -- ise di -- vine that nev -- er can fail.

%Refrain:
Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prai -- ses, Je -- sus is mine.
%vs 2
 Shad -- ows a -- bove me,
nev -- er con -- ceal my Sa -- vior and Guide;
He is the light, in Him is no dark -- ness;
ev -- er I’m walk -- ing close to His side.
%refrain
Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prais -- es, Je -- sus is mine.
%vs 3
sun -- light re -- joi -- cing, to man -- sions a -- bove;
Sing His prais -- es, I’m walk -- ing, walk -- ing in
sun -- light, sun -- light of love.
% -- [Re -- frain]

Heav -- en -- ly sun -- light, heav -- en -- ly sun -- light,
flood -- ing my soul with glo -- ry di -- vine;
Hal _ le -- lu -- jah, I am re -- joic -- ing,
sing -- ing His prai -- ses, Je -- sus is mine.
Sing -- ing His prai -- ses,
sing -- ing His prai -- ses,
Je -- sus is mine,
Je -- sus is mine!

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
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "lead" \verseB

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verseA

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verseB

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "bass" \verseA


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
}
%}
