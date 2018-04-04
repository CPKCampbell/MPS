\version "2.21.0"
\language "english"

\header {
  title = "Jesus Paid It All"
  composer = "John T. Grape"
  poet = "Elvina M. Hall"
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
  \key ef \major
  \time 3/4
  \partial 4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1
}

tenor = \relative c' {
  \global
 g8 ( bf ) ef4. ef8 ef bf g2 g4 bf4. bf8 bf bf bf2 g8 bf
 ef4. ef8 ef bf g2 bf8 c bf4. bf8 bf af g2.
 % refrain
 ef'4.\mark \markup{ \tiny \italic "Vs 1, 3, 4 only" }
 ef8 ef bf bf2.ef4. ef8 ef bf bf2. ef4. ef8 ef bf bf ef ef4 c bf4. bf8 bf af g2
}

lead = \relative c {
  \global
  ef8 ( g ) bf4. c8 bf g ef2 ef4 f4. f8 ef f g2 ef8 g |
 bf4. c8 bf g ef2 ef8 f g4. af8 g f ef2. \bar "||"
 % refrain
 bf'4. c8 bf g ef'2.
 bf4. c8 bf g f2. bf4. c8 bf g ef' d c4 ef g,4. af8 g f ef2
  \bar "|."

}

baritone = \relative c {
  \global
 ef4 g4. af8 g ef ef2 ef4 d4. d8 c d ef2 ef8 ef
 g4. af8 g ef ef2 g8 af bf4. f8 ef d ef2. \bar "||"
 % refrain
 g4.\mark \markup{ \tiny \italic "Vs 1, 3, 4 only" } af8 g ef g2.
 g4. af8 g g bf2. g4. af8 g ef g bf af4 a bf4. f8 ef d bf2
 \bar "|."

}

bass = \relative c {
  \global
 ef4 ef4. ef8 ef ef bf2 bf4 bf4. bf8 bf bf ef2 ef8 ef |
 ef4. ef8 ef ef bf2 ef8 ef ef4. bf8 bf bf ef2.
 % refrain
 ef4. bf8 bf bf ef2.
 ef4. ef8 ef ef bf2. ef4. ef8 ef ef ef g af4 ef ef4. bf8 bf bf ef,2
}

verseOne = \lyricmode {
  \set stanza = "1."
 I hear the Sav -- ior say,
 “Thy strength in -- deed is small,
 Child of weak -- ness, watch and pray,
 Find in Me thine all in all.”

}

verseTwo = \lyricmode {
  \set stanza = "2."
 Lord,  now in -- deed I find
Thy pow'r and Thine a -- lone,
Can _ cleanse the lep -- er's spots
And _ melt the heart of stone.
}


verseThree = \lyricmode {
  \set stanza = "3."
  For  noth -- ing good have I
Where -- by Thy grace to claim;
I'll _ wash my gar -- ments white
In the blood of Cal -- v'ry's Lamb.
}

verseFour= \lyricmode {
  \set stanza = "4."
  And  when, be -- fore the throne,
I stand in Him com -- plete,
“Je -- sus died my soul to save,”
My _ lips shall still re -- peat.
}

refrain = \lyricmode {
  Je -- sus paid it all,
All to Him I owe;
Sin had left a crim -- son stain,
He washed it white as snow.
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

