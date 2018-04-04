\version "2.19.35"
\language "english"


\header {
  title = "Hallelujah, He Is Risen"
  composer = "P.P. Bliss"
  poet = "P.P. Bliss"
  tagline = ""
}
#(set-global-staff-size 18)

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
  }
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

tenor = \relative c' {
  \global
  b8. b16 b4. d8 c8. c16 b4 g  b8. b16  d4. d8 d8. d16 d2 b8. b16 |
  b4. d8 c8. c16 b4 g b8. b16 d4. d8 d8. c16 b2 \bar "||"
  % refrain
  \repeat volta 2 {  b8. b16 c4. c8 c8. c16b4 d d8. b16  }
  \alternative {
    {b4. d8 d8. d16 d2 }
    {b4. d8 d8. c16 b2 }
  }
  \bar "|."
}

lead = \relative c' {
  \global
  d8. d16 d4. b8 a8. b16 g4 d g8. g16 a4. c8 b8. a16 b2 d8. d16 |
  d4. b8 a8. b16 g4 d g8. g16 a4. c8 b8. a16 g2
  % refrain
  \repeat volta 2 {
    g8. g16 e'4. e8 e8. e16 d4 b b8. d16
  }
  \alternative {
    {c4. c8 b8. a16 b2 }
    {c4. c8 b8. a16 g2 }
  }
}


baritone = \relative c' {
  \global
  g8. g16 g4. g8 fs8. fs16 g4 b, d8. g16 fs4. a8 g8. fs16 g2 g8. g16 |
  g4. g8 fs8. fs16 g4 b, d8. g16 fs4. a8 g8. fs16 g2 \bar "||"
  % refrain
  \repeat volta 2 { b,8. d16  g4. g8 g8. g16 g4 g g8. g16 }
  \alternative {
    {fs4. a8 g8. fs16 g2 }
    { fs4. a8 g8. fs16 d2 }
  }
  \bar "|."
}
bass = \relative c {
  \global
  g'8. g16 g4. g8 d8. d16 g4 g, g'8. g16 d4. d8 d8. d16 g2 g8. g16 |
  g4. g8 d8. d16 g4 g, g'8. g16 d4. d8 d8. d16 g,2
  % refrain
  \repeat volta 2 { g'8. g16 c,4. d8 e8. fs16 g4 4 g8. g16 }
  \alternative {
    {d4. d8 d8. d16 <g g,>2 }
    {d4. d8 d8. c16 <g' g,>2  }
  }
}

verseOne = \lyricmode {
 Hal -- le -- lu -- jah, He is ris -- en!
Je -- sus is gone up on high!
Burst the bars of death a -- sun -- der,
An -- gels shout and men re -- ply:

}

verseTwo = \lyricmode {
  Hal -- le -- lu -- jah, He is ris -- en!
Our ex -- alt -- ed Head to be;
Sends the wit -- ness of the Spir -- it
That our ad -- vo -- cate is He:
}

verseThree = \lyricmode {
  Hal -- le -- lu -- jah, He is ris -- en!
Death it -- self has lost its sting,
Christ, Him -- self the Res -- ur -- rec -- tion,
From the grave His own will bring:
}

refOne = \lyricmode {
  \repeat volta 2 {  He is ris -- en, He is ris -- en, liv -- ing }
  \alternative {
    { now, no more to die. }
     { now, no more to die. }
  }
}

refTwo = \lyricmode {
  \repeat volta 2 {  He is ris -- en, He is ris -- en, jus -- ti  }
  \alternative {
    { fied in Him are we. }
     { fied in Him are we. }
  }
}

refThree = \lyricmode {
  \repeat volta 2 {  He is ris -- en, He is ris -- en, Liv -- ing }
  \alternative {
    { Lord and com -- ing King. }
     { Lord and com -- ing King. }
  }
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



choirPart = \new ChoirStaff <<
  \new Staff \with {
    \clef "treble_8"
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
 \new Lyrics \lyricsto "lead" { \verseOne \refOne }
    \new Lyrics \lyricsto "lead" { \verseTwo \refTwo }
      \new Lyrics \lyricsto "lead" { \verseThree \refThree }
  \new Staff \with {
    \clef "treble_8"
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor



  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }\new Lyrics \lyricsto "baritone" { \verseOne \refOne }
    \new Lyrics \lyricsto "baritone" { \verseTwo \refTwo }
      \new Lyrics \lyricsto "baritone" { \verseThree \refThree }

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

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "lead sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "lead sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseOne
    \midi { }
  }
}

