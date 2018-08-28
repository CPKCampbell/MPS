\version "2.21.0"
\language "english"

\header {
  title = "Just Over In The Glory Land"
  composer = "Emmett Sidney Dean"
  poet = "James W. Acuff, 1906"
  copyright = "Courtesy of the Cyber Hymnal"
  tagline = ""
}

#(set-global-staff-size  20)

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
      \override LyricText.self-alignment-X = #LEFT
    }
    }

global = {
  \key g \major
  \time 4/4 \tempo 4=105
  \partial 4
  \autoBeamOff
}

lead = \relative c {
  \global
  d8. e16 g4 4 4 d8. e16 g4 e d d e8 g a g b4 a |
  a2. d,8. e16 g4 g g d8. e16 g4 e d d e8 g a g b4 a g2.  \bar "" \break
  d4 b'2~ b8. a16 g8. a16 b4 a g g g2~ g8. fs16 g8. a16 g4 e d d e8 g a g b4 a
  a2. d,4 b'2~ b8. a16 g8. a16 b4 a g g g2~ g8. fs16 g8. a16 g4 e d d e8 g a g b4 a  g2.
}

tenor = \relative c' {
  \global
  b8. b16 b4 c b b8. c16 e4 c b b b8 d e d cs4 cs |
  d2. b8. b16 b4 c b b8. c16 e4 c b b  c8 e e e d4 c b2. b4 |
d2~ d8. d16 d8. d16 d4 c b d e2~ e8. ds16 e8. e16 e4 c b b b8 d e e cs4 cs |
d2. d4 d2~ d8. d16 d8. d16  e4 c b d e2~e8. ds16 e8. e16 e4 c b b  c8 e e e d4 c b2. \bar "|."
}

baritone = \relative c' {
  \global
 g8. g16 d4 e d g8. g16 g4 g g g g8 g g g g8 ( fs ) e ( g ) |
 fs2. g8. g16 d4 e d g8. g16 g4 g g g g8 g g g g4 fs d2.\bar "||" g4
%refrain
g4 g g8. fs16 g8. fs16 g4 fs g g c c c8. c16 c8. c16 c4 g g g g8 g g g g (fs) e (g) |
fs2. fs4 g g g8. fs16 g8. fs16 g4 fs g g c c c8. c16 c8. c16  c4 g g  g g8 g g g g4 fs d2.
\bar "|."
}

bass = \relative c {
  \global
  g8. g16 g4 g g g8. g16 c8 ( d) e ( fs) g4 g e8 b c b a4 a |
  d2. gs,8. g16 g4 g g g8. g16 c8 (d) e (fs) g4 g e8 b c cs d4 d g,2. g4 |
  g4 g g8. a16 b8. d16 g4 d e b c c c8. c16 c8. c16 c8 (d) e (fs) g4 g e8 b c b a4 a |
  d2. d4 g,g g8. a16 b8. d16 g4 d e b c c c8. c16 c8. c16 c8 (d) e (fs) g4 g e8 b c cs d4 d g,2.
}

verseOne = \lyricmode {
  \set stanza = "1."
 I've a home pre -- pared where the saints a -- bide,
 Just o -- ver in the glo -- ry land;
 And I long to be by my Sav -- ior's side,
 Just o -- ver in the glo -- ry land.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  I am on my way to those man -- sions fair,
  Just o -- ver in the glo -- ry land;
  There to sing God's praise and His glo -- ry share;
  Just o -- ver in the glo -- ry land.


}

verseThree = \lyricmode {
  \set stanza = "3."
 What a joy -- ful thought that my Lord I'll see,
 Just o -- ver in the glo -- ry land.
And with kin -- dred saved, there for ev -- er be,
Just o -- ver in the glo -- ry land.


}

refrain = \lyricmode {
  Just o -- ver in the glo -- ry land,
  I'll join the hap -- py an -- gel band,
  Just o -- ver in the glo -- ry land;
  Just o -- ver in the glo -- ry land,
  There with the might -- y host I'll stand,
  Just o -- ver in the glo -- ry land.
}

brefrain = \lyricmode {
  \repeat unfold 36 { \skip 1 }
 Just ov -- ver, ov -- er " "  " "  " "  " "  " "
 I'll join, yes join \repeat unfold 14 { " " }
 Just ov -- ver, ov -- er " " " " " " " " " "
 There with, yes with
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

    \new Staff = "basses" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
        } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      alignAboveContext = "basses" } \lyricsto "baritone" \brefrain
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

