\version "2.21.0"
\language "english"

\header {
  title = "Down At The Cross"
  composer = "John H. Stockton"
  poet = "Elisah A. Hoffman"
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
    }
}

global = {
  \key af \major
  \time 4/4
}

tenor = \relative c' {
  \global
  ef4\mp ef8. df16 c4 c8. ef16 df4 df c2 ef4 ef8. ef16 ef4 ef8. ef16 |
  ef4 ef ef2 ef4 ef8. df16 c4 ef8. ef16 df4 df c2 ef4.\cresc c8 ef4 df c1 |
  \bar "||"
  % refrain
  df4.\f \mark \markup{ \tiny \italic "Vs 1, 2, 4 only" }df8 f4 df c4. ( df8 c2 ) ef4. ef8 ef4 ef ef1 |
  ef4 ef8. df16 c4 ef8. ef16 df4 df c2 ef4. c8 ef4 df c1
  \bar "|."

}

lead = \relative c' {
  \global
 c4 c8. bf16 af4 af8. g16 f4 af ef2 c'4 c8. c16 ef4 ef8. af,16 |
 af4 c bf2 c4 c8. bf16 af4 af8. g16 f4 af ef2 c'4. af8 c4 bf af1 |
 af4. af8 af4 f ef4. ( f8 af2 ) c4. c8 c4 af bf4. ( c8 bf2) |
 c4 c8. bf16 af4 af8. g16 f4 af ef2 c'4. af8 c4 bf af1

}

baritone = \relative c' {
  \global
af4 af8. af16 af4 af8. af16 af4 af af2 af4 af8. af16 c4 c8. c16 |
c4 af g2 af4 af8. af16 af4 af8. af16 af4 af af2 af4. af8 af4 g af1 |
\bar "||"
% refrain
f4.^\markup{ \tiny \italic "Vs 1, 2, 4 only" } f8 af4 af af1 af4. af8 af4 af g4. ( af8 g2 ) |
af4 af8. af16 af4 af8. af16 af4 af af2 af4. af8 af4 g af1
\bar "|."
}

bass = \relative c {
  \global
  af4 af8. af16 af4 c8. c16 df4 f af,2 af'4 af8. af16 af4 af8. af16 |
  af4 af ef2 af,4 af8. af16 af4 c8. c16 df4 f af,2 ef'4. ef8 ef4 ef af,1 |
  % refrain
  df4. df8 df4 df af1 af'4. af8 af4 c, ef1 |
  af,4 af8. af16 af4 c8. c16 df4 f af,2 ef'4. ef8 ef4 ef af,1
}

verseOne = \lyricmode {
  \set stanza = "1."
  Down at the cross where my Sav -- ior died,
down where for cleans -- ing from sin I cried,
there to my heart was the blood ap -- plied;
glo -- ry to His name!

}

verseTwo = \lyricmode {
  \set stanza = "2."
  I am so won -- drous -- ly saved from sin,
Je -- sus so sweet -- ly a -- bides with -- in;
there at the cross where He took me in;
glo -- ry to His name!
}

verseThree = \lyricmode {
  \set stanza = "3."
  Oh, pre -- cious foun -- tain that saves from sin,
I am so glad I have en -- tered in;
there Je -- sus saves me and keeps me clean;
glo -- ry to His name!
}

verseFour = \lyricmode {
   \set stanza = "4."
  Come to this foun -- tain so rich and sweet,
cast thy poor soul at the Sa -- vior’s feet;
plunge in to -- day, and be made com -- plete;
glo -- ry to His name!
}

refrain = \lyricmode {
  Glo -- ry to His name,
glo -- ry to His name:
there to my heart was the blood ap -- plied;
glo -- ry to His name!
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
 \new Lyrics  \lyricsto "tenor" \verseFour

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
    \rehearsalMidi "lead" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "tenor sax" \verseOne
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

