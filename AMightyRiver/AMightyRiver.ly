\version "2.21.0"
\language "english"

\header {
  title = "A Mighty River"
  subtitle = "(With Goin’ to Build My Life) "
  composer = "Ronald K. Weller"
  arranger = "Charles F. Brown"
  poet = "R.K.W."
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
 %   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    \override LyricText.self-alignment-X = #LEFT
  }
}

global = {
  \key ef \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)

  \tempo "With a Western swing "
  \set Score.markFormatter = #format-mark-circle-alphabet
  \set Staff.printKeyCancellation = ##f
}

tenor = \relative c' {
  \global
  R1 \mark \default R1*8 ef2. f4 g2 af2 g2. ef4 |
  bf1 r4 c f g af2 bf g1 |
  r4 ef g bf \mark \default
  \repeat volta 2 {
    ef,2 c ( d4 ) d d d d2 ( bf ) |
    r4 c c c af2 c r4 ef ef ef bf2 ( d ) |
    r4 bf c bf af2 af~ af4 bf8 af g4 af bf1 |
    r4 bf c bf af2 af~ af4 g8 af bf4 af }
  \alternative {
    {g1 r4 ef g bf }
    { g1 }
  }
    r4 b,8 b cs4 e \bar "||" \mark \default \key e \major e1~ e4 e8 e gs ( fs ) e4 |
    gs1 r4 b,8 b cs4 e gs b8 b gs4 b |
    b4 cs8 cs cs4 cs fs,1 R1 |
   r4 e8 e gs4 b d1 r4 cs b cs a2 b4 a |
   gs4 e gs e b' b,8 b cs4 e e1 |
   R1 \bar "||" \key f \major r2 bf'4. a8 R1 r2 df4. c8 |
   R1 r4 a2 g4 fs2~ fs8 g a4 bf r f4. e8 |
   R1 r4 a8 a g4 f ef ef ef f d1 |
   r4 d' c bf a2. f4 a2. f4 c'1 |
   r4 c d8 f4 ( d8 ) f1 r4 c d8 f4 ( d8 ) f1 |
   r4 d2 c4 f1~ f~ f4 r4 g4. ( f8 ) \bar "||"
  }





lead = \relative c' {
  \global
  % Music follows here.

}

baritone = \relative c {
  \global
  r4 bf c bf \bar "||" \mark \default g'2 g r4 g f8 ef c4 bf1 |
  r4 bf c bf f'2 f~ f4 g8 f ef4 f g1 |
  r4 bf c bf g2 g~ g4 g f8 ef c4 bf1 |
  r4 bf c bf f'2 f~ f4 g8 f ef4 c ef1 |
  r4 ef g bf \mark \default
  \repeat volta 2 {
    af2 ef ( f4 ) f f f f1 |
    r4 e e e ef2 ef r4 g g g f1 |
    r4 bf, c bf f'2 f~ f4 g8 f ef4 f g1 |
    r4 bf,4 c bf f'2 f~ f4 g8 f ef4 c
  }
  \alternative {
    {ef1 r4 ef g bf }
    {ef,1 }
  }
  r4 b8 b cs4 e \bar "||" \mark \default \key e \major e1~ e4 e8 e gs ( fs ) e4 |
  gs1 r4 b,8 b cs4 e e ds8 ds e4 ds |
  cs4 es8 es es4 es fs1 r4 b,8 b cs4 e |
  gs1~ gs4 gs fs e cs'1 r4 cs b a |
  gs4 e gs e b' b,8 b cs4 e e1 |
  r4 c8 c d4 f \bar "||" \key f \major f1 r4 f8 f a ( g ) f4 a1 |
  r4 c,8 c d4 f f e f g a c d c g1 |
  r4 c,8 c d4 f a1~ a4 a g f d'1 |
  r4 d c bf a2. f4 a2. f4 bf1 |
  r4 c bf8 c4. a1 r4 c bf8 c4. a1 |
  r4 d2 c4 f,1~ f~ f4 r4 r2
  \bar "||"
}

bass = \relative c {
  \global
  % Music follows here.

}

verseOne = \lyricmode {

  A might -- y riv -- er, the riv -- er of love,
  From Cal -- v’ry’s moun -- tain and the cross there -- of.
  A might -- y riv -- er, the riv -- er of love,
  Flows wide with mer -- cy from the Lord a -- bove.
  We sing of
  Je -- sus of Gal -- i -- lee.
  He said to Pe -- ter “Come fol -- low Me,
  Just leave your fish -- ing, leave the nets and sea.
  You’ll fish for sin -- ners, come and fol -- low Me”
}

verseTwo = \lyricmode {

  % Lyrics follow here.

}

verseThree = \lyricmode {

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

    \new Staff = "basses" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
    } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
 \new Lyrics \with { alignAboveContext = "basses" }
 \lyricsto "baritone" \verseOne
    \new Lyrics  \lyricsto "baritone" { \verseTwo  }
    \new Lyrics  \lyricsto "baritone" \verseThree

  >>
  \layout {
    \context {
      \Lyrics
    %  \override VerticalAxisGroup.staff-affinity = #DOWN
    %  \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    }
  }
  \midi {
    \tempo 4=100
  }
}
%{
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
%}
