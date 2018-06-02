\version "2.21.0"
\language "english"

\header {
  title = "The Love Of God"
  composer = "Frederick M. Lehman, 1917"
  poet = "F.M.L. 1917"
  arranger = "Claudia L. Mays"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 16)
\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key ef \major
  \time 3/4
  \partial 4.
}

tenor = \relative c' {
  \global
  g8 g af bf4. ef8 ef ef ef4 ( bf8 ) g g bf bf4. bf8 bf bf bf4.
  g8 g af bf4. ef8 ef ef ef4 ( bf8 ) g g bf bf4. bf8 bf af g4.
  g8 af bf c4. c8 c af g4 ( bf8 ) g g g bf2 bf4 bf4.
  g8 af bf c4. c8 c af g4 ( bf8 ) g g g f4 ( af ) bf g4.
  % refrain
  \repeat volta 2 {
    g8 af bf c4. c8 bf af g4 ( bf8 ) g g af b2
  }
  \alternative {
    { af4 g4. }
    {bf4 g4.}
  }
  \bar "|."
}


lead = \relative c {
  \global
  ef8 ef f g4. bf8 c bf bf4  ( g8 ) bf bf g f4. af8 g f  g4.
  ef8 ef f g4. bf8 c bf bf4 ( g8 ) bf bf g f4. af8 g f ef4.
  ef'8 ef ef c4. ef8 ef ef bf4 ( g8 ) bf8 bf c bf4 ( f ) af g4.
  ef'8 ef ef c4. ef8 ef ef bf4 ( g8 ) bf8 bf c bf4 ( f ) g ef4.
  % refrain
  \repeat volta 2 {
    ef'8 ef ef ef4. ef8 d c bf4 ( g8 ) bf bf c bf4 ( f )
  }
  \alternative {
    {c'4 bf4. }
    {g4 ef4. }

  }
  \bar "|."
}

baritone = \relative c {
  \global
  bf8 bf bf ef4. g8 af g g4 ( ef8 ) ef ef ef d4. f8 ef d ef4.
  bf8 bf bf ef4. g8 af g g4 ( ef8 ) ef ef ef d4. f8 ef d ef4.
  ef8 ef ef ef4. ef8 ef ef ef4. ef8 ef ef d2 f4 ef4.
  ef8 ef ef ef4. ef8 ef ef ef4. ef8 ef ef d2 d4 ef4.
  % refrain
  \repeat volta 2 {
    ef8 ef ef ef4. ef8 ef ef ef4. ef8 ef ef d2
  }
  \alternative {
    {d4 ef4. }
    { d4 ef4. }
  }
}

bass = \relative c {
  \global
  ef8 ef ef ef4. ef8 ef ef ef4. ef8 ef ef bf4. bf8 bf bf ef4.
  ef8 ef ef ef4. ef8 ef ef ef4. ef8 ef ef bf4. bf8 bf bf ef4.
  ef8 f g af4. af8 af, c ef4. ef8 ef ef f2 d4 ef4.
  ef8 f g af4. af8 af, c ef4. ef8 ef ef bf2 bf4 ef4.
  % refrain
  \repeat volta 2 {
    ef8 f g af4. af8 af af ef4. ef8 ef ef f4 ( bf )
  }
  \alternative {
    {bf,4 ef4. }
    {bf4 ef4. }
  }


}

verseOne = \lyricmode {
  \set stanza = "1."
  The love of God is great -- er far
Than tongue or pen can ev -- er tell;
It goes bey -- ond the high -- est star,
And reach -- es to the low -- est hell;
The guilt -- y pair, bowed down with care,
God gave His Son to win;
His er -- ring child He re -- con -- ciled,
And par -- doned from his sin.
}

verseTwo = \lyricmode {
  \set stanza = "2."
 When hoar -- y time shall pass a -- way,
And earth -- ly thrones and king -- doms fall,
When men who here re -- fuse to pray,
On rocks and hills and moun -- tains call,
God’s love so sure, shall still en -- dure,
All meas -- ure -- less and strong;
Re -- deem -- ing grace to Ad -- am’s race—
The saints’ and an -- gels’ song.
}

verseThree = \lyricmode {
  \set stanza = "3."
 Could we with ink the o -- cean fill,
And were the skies of parch -- ment made,
Were ev -- ery stalk on earth a quill,
And ev -- ery man a scribe by trade;
To write the love of God a -- bove
Would drain the o -- cean dry;
Nor could the scroll con -- tain the whole,
Though stretched from sky to sky.

}

refrain = \lyricmode {
  <<
    {
  Oh, love of God, how rich and pure!
How meas -- ure -- less and strong! }
    \new Lyrics {
    \set associatedVoice = "tenor1"

It shall for ev -- er -- more en -- dure—
The saints’ and an -- gels’ song.
}
  >>
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
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics  \lyricsto "tenor1" \verseOne
    \new Lyrics  \lyricsto "tenor1" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor1" \verseThree

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
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

