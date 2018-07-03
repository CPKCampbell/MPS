\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  title = "A Rose Among The Thorns"
  composer = "Ernest C. Martin"
  poet = "Ernest C. Martin"
  tagline = ""
}

\include "articulate.ly"

\paper {
  #(set-paper-size "letter")
systems-per-page = #4
  ragged-last-bottom = ##f
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
      \override LyricSpace.minimum-distance = #1.0
    }
}

global = {
  \key af \major
  \time 4/4
  \partial 8

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
    \tempo \markup {
    \concat {
      (
      \smaller \note {8 } #1 " " \note {8 } #1
      " = "
      \smaller  \note {8. } #1 " " \note {16 } #1
      )
    }
  }
}
bb = {
 \bar "" \break
}
st = {
   \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}
tenor = \relative c {
  \global
  \repeat volta 3 {
  ef8 ef ef ef af af c c bf16 af af8 af af f af4 r8 \bb
  af8 af af bf af ef af af c bf c bf c bf4 r8 \bb
  af8 c8 c c bf af bf c c af af af f af4 r8 \bb
  bf8 af8 af af ef ef af af4~ \time 2/4 af4 r8 bf \time 4/4 \st c8 c bf16 ( af ) bf8 af4 r8 \bb
  c
  % refrain
  ef8 ef df c c ef ef c bf af af bf af4 r8 \bb
  c   ef8 ef df c c ef ef c bf bf bf c bf4 r8 \bb
  af8  c8 c bf af af bf c bf af af af f af4 r8 \bb
  bf8   af8 af af ef ef af af4~ \time 2/4 af4 r8 bf8 \time 4/4 \st  c8 c bf16 ( af ) bf8 af4.
  }
  \bar "|."
}

lead = \relative c' {
  \global
  \repeat volta 3 {
  af8 af af af ef ef af af gf16 gf f8 f f af af4 r8
  af8 ef ef f ef af ef ef af af af af af g4 r8
f8 af af af f ef f gf gf f f f af af4 r8
f8 ef f af af af ef f4~ \time 2/4 f4 r8 g8 \time 4/4 \st af8 af g g ef4 r8
%refrain
af8 c c bf af af c c af f f f f ef4 r8
af8 c c bf af af c c af af af af af g4 r8
f8 af af f ef ef f gf gf f f f af af4 r8
f8 ef ef ef af af ef f4~ \time 2/4 f4 r8 g8 \time 4/4 \st  af8 af g g ef4.
  }
}

baritone = \relative c {
  \global
  \repeat volta 3 {
  c8 c c c c c ef ef ef16 ef df8 df df df c4 r8 c
  c8 c df c c c c ef d d d d ef4 r8 df
  ef ef ef df c df ef ef df df df df c4 r8 df
  c8 c c c c c c4~ \time 2/4 c4 r8 df \time 4/4 \st  ef ef df df c4 r8 ef
%refrain
af8 af f ef ef af af ef df df df df c4 r8 ef
af8 af f ef ef af af ef d d d d ef4 r8 df
ef ef df c c df ef c df df df df c4 r8 df
c8 c c c c c c4~ \time 2/4 c4 r8 df \time 4/4 \st  ef8 ef df df c4.
  }
}

bass = \relative c {
  \global
  \repeat volta 3 {
  af8 af af af af af af af af16 af df8 df df df af4 r8 af
  af8 af af af af af af af bf bf bf bf ef4 r8 ef
  af,8 af af af af af af af df df df df af4 r8 af8
  af8 af af af af af f4~ \time 2/4 f4 r8 ef8 \time 4/4 \st ef'8 ef ef ef af,4 r8 af
%refrain
af8 af af af af af af af df df df df af4 r8 af
af8 af af af af af af af bf bf bf bf ef4 r8 ef |
af,8 af af af af af af af df df df df af4 r8 af
af8 af af af af af f4~ \time 2/4 f4 r8 ef \time 4/4 \st ef'8 ef ef ef af,4.
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
 While stroll -- ing through the fields of time,
There are man -- y things to see.
But na -- ture is the great -- est sight
That there could ev -- er be.
The great -- est of them all to me
Is how the world was formed.
And why the ros -- es have to live
Each day a -- mong the thorns.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  A -- long the road to Jer -- i -- cho,  a _ man was left to die
  there like a pet -- al from a rose;  two men had passed him by.
  A neigh -- bor and a friend came by and saw his life -- less form.
  With love he took good care of him, a rose a -- mong the thorns.

}

verseThree = \lyricmode {
  \set stanza = "3."
  Two thou -- sand years  have come and  gone since _ God looked down in love.
There in the town of Beth -- le -- hem a Rose be -- gan to bud.
It lived to bloom un -- til one day was crushed with aw -- ful frown.
And then with love from God a -- bove was moved to high -- er ground.
}

refrain = \lyricmode {
  One day a -- mong a world of thorns a Rose be -- gan to grow.
It was the great -- est gift of God this world will ev -- er know.
It was the will of God to show that since the world was formed
There had to be a Rose to live and die a -- mong the thorns.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 82 4)
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
       \consists "Merge_rests_engraver"
         } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
   \new Lyrics  \lyricsto "tenor" \verseOne
    \new Lyrics  \lyricsto "tenor" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor" \verseThree

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
       \consists "Merge_rests_engraver"
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
    %{
  \midi {
    \tempo 4=82
  }
    %}
}

%{ 
%Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \articulate
    \rehearsalMidi "tenor" "tenor sax" { \verseOne \refrain }
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
%}
