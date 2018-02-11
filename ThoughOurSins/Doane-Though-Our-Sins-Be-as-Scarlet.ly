\version "2.21.0"
\language "english"

\header {
  copyright =  "Public Domain"
  encodingdate =  "2018-02-01"
  title =  "Though Our Sins Be as Scarlet"
  encodingsoftware =  "MuseScore 2.0.2"
  composer =  "William Howard Doane"
  poet =  "Frances Jane (Fanny) Crosby, 1887"
  tagline = ""
}
#(set-global-staff-size 16)
\paper {
  #(set-paper-size "letter")
 system-count = #5
 page-count = #1
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key af \major
  \time  3/4
  \partial 4
}

tenor = \relative c' {
  \global
  c8. c16 c2 \tuplet 3/2 {af8 (bf) c } df4 c c8. c16 bf8. c16 bf4 df c2
c8. c16 c2 \tuplet 3/2 {af8 (bf) c } df4 c c8. c16 bf8. c16 bf4 df c2
\tuplet 3/2 { g8 af g } g2~ \tuplet 3/2 {g4 g8 } af4 af af8 bf c2 bf4 af2\fermata  \bar "||"
df8. df16 c2 \tuplet 3/2 { af8 (bf) c } df4 c af8. af16 af2 \tuplet 3/2 { af4 af8 }
af4 af af8 af af4. af8 af8.  af16 af2 af8 af g4. af8 bf8. g16 af2
\bar "|."
}

lead = \relative c {
   \global
   ef8.  ef16 ^ "Gently"  ef2 \times 2/3 { c8 (  df )  ef  }  | % 3
   f4  ef  ef8.  af16 | % 4
   g8.  af16  g4  f | % 5
   ef2  ef8.  ef16 | % 6
   ef2 \times 2/3 { c8 (  df )  ef  }   | % 7
   f4  ef  ef8.  af16 | % 8
   g8.  af16  g4  bf | % 9
   af2 \times 2/3 { ef8 f ef  }   |
   bf'2 ~ \times 2/3 { bf8  (c) bf  }  | % 11
   af4 af af8  bf | % 12
   c2  c,4 | % 13
    f2\fermata \bar "||"
    ef8.  ef16 | % 14
   ef2 \times 2/3 { c8 ( df )  ef } | % 15
   f4  ef  c'8. c16  | % 16
   c2 \times 2/3 { af8 ( bf )  c }  | % 17
   df4 c  bf8  af   | % 18
   af4.  g8  af8.   f16 | % 19
   ef2 _\f ef8  ef |
   ef4. ef8 ef8.  ef16  | % 21
    ef2 \bar "|."

}

baritone = \relative c {
    ef8.  ef16  ef2 \times 2/3 { c8 (  df )  ef  }  | % 3
   f4  ef  ef8.  af16 | % 4
   g8.  af16  g4  f | % 5
   ef2  ef8.  ef16 | % 6
   ef2 \times 2/3 { c8 (  df )  ef  }   | % 7
   f4  ef  ef8.  af16 | % 8
   g8.  af16  g4  bf | % 9
   af2 \times 2/3 { df,8 ef df  }   |
  df2 ~ \times 2/3 { df8 (ef) df  }  | % 11
   c4 c af'8  bf | % 12
   c2  c,4 | % 13
    c2\fermata  ef8.  ef16 | % 14
   ef2 \times 2/3 { c8 ( df )  ef } | % 15
   f4  ef  ef8. ef16  | % 16
   ef2 \times 2/3 { c8 ( df )  ef }  | % 17
   f4 ef  ef8  ef   | % 18
   f4.  e8  f8.  df16 | % 19
   c2  c8  c |
   bf4. c8 df8.  bf16  | % 21
    c2 \bar "|."

}

bass = \relative c' {
  \global
af8. af16 af2 \tuplet 3/2 { af4 af8 } af4 af af,8. af16 ef'8. ef16 ef4 ef af2
af8. af16 af2 \tuplet 3/2 { af4 af8 } af4 af af,8. af16 ef'8. ef16 ef4 ef af,2
\tuplet 3/2 {ef'8 ef ef } ef4 \tuplet 3/2 { ef8 ef ef } \tuplet 3/2 { ef4 ef8 } af,4 af af8 bf c2 c4 f2
g8. g16 af2 \tuplet 3/2 { af4 af8 } af4 af af,8. af16 af2 \tuplet 3/2 { af4 af8 }
af4 af c8 c df4. df8 df8. df16 af2 af8 af ef' 4. ef8 ef8. ef16 af,2


}

verseOne = \lyricmode {
   \set stanza = "1."
  Though our sins be as scar -- let,
they shall be as white as snow;
though our sins be as scar -- let,
they shall be as white as snow.
Though they be red   like crim -- son,
They shall be as wool.
Though our sins be as scar -- let,
though our sins be as scar -- let,
they shall be as white as snow,
they shall be as white as snow

}

verseTwo = \lyricmode {
 \set stanza = "2."
 Hear the voice that en -- treats you,
O re -- turn ye un -- to God!
Hear the voice that en -- treats you,
O re -- turn ye un -- to God!
He is of great com -- pas -- sion,
and of won -- drous love.
Hear the voice that en -- treats you,
hear the voice that en -- treats you,
O re -- turn ye un -- to God!
O re -- turn ye un -- to God!
}

verseThree = \lyricmode {
   \set stanza = "3."
  He'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more:
he'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more.
“Look un -- to me,  ye peo -- ple,”
saith the Lord your God.
He'll for -- give your trans -- gres -- sions,
he'll for -- give your trans -- gres -- sions,
and re -- mem -- ber them no more,
and re -- mem -- ber them no more.
}

bassVerseOne = \lyricmode {
  \repeat unfold 28 { \skip 1 }
Though they be red Though they be red
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenor }
     \new Staff = "tenor2" \new Voice = "tenor2" { \lead }
     \new Staff = "bass1" \new Voice = "bass1" { \baritone }
     \new Staff = "bass2" \new Voice = "bass2" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 88 4)
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
      instrumentName = \markup \center-column { "Lead" "Baritone" }
         } <<
      \clef "treble_8"

      \new NullVoice = "tenor1"  \lead


    \new Voice  \partcombine \lead \baritone
    >>
   \new Lyrics  \lyricsto "tenor1" \verseOne
    \new Lyrics  \lyricsto "tenor1" { \verseTwo  }
    \new Lyrics  \lyricsto "tenor1" \verseThree

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
        } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \tenor }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "bass2" \bassVerseOne
  >>
  \layout {
  \context {
    \Lyrics
   \override VerticalAxisGroup.staff-affinity = #CENTER
   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
  }
   \context {
      \Score
      \override SpacingSpanner.common-shortest-duration =
        #(ly:make-moment 1/4)

  }
    }
  \midi {
    \tempo 4=88
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verseOne
    \midi { }
  }
}

