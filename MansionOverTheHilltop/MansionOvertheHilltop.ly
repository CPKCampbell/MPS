\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  title = "Mansion Over the Hilltop"
  composer = "Ira Stanphill"
  poet = "I.S."
  tagline = ""
}
#(set-global-staff-size 16)
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
    %    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    \override LyricText.self-alignment-X = #LEFT
    \override LyricText.font-size = -1
  }
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
  }
}

global = {
  \key c \major
  \time 4/4
  \partial 4.
  \autoBeamOff
}

lead = \relative c {
  \global
  \clef "treble_8"
  \repeat volta 3 {
    e8 f fs g4 e4. c'16 c c b a8 g4 ( e4. ) g8 \mark \markup { \teeny \italic "v1 T1/B2" } g fs f4 d4.
    a'16\mark \markup { \teeny \italic "v1 T2/B1" } a g g fs8 g2~ g8 e\mark \markup { \teeny \italic "parts" } f fs g4 e4. c'16 c c b a8 g4 ( e4. )
    g8 a as b4 a4. g8 b16 c d8 c2 ~ c8
    % chorus
    c8 c c c4 a4. c8
    d16 c a8 g4 e4. g8 a as b4 a4. b8 a16 g fs8 g2~ g8 c c c
    c4 a4. c16 b d c  a8 g4 e4. g8 a as b4 a4. g8 b d c2~ c8
  }
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 3 {
    g8 a b c4 g4. c16 c c c c8 c4 ( g4. ) c8 c c b4 g4.
    b16 b b b b8 c2~ c8 g a b c4 g4. c16 c c c c8 c4 ( g4. )
    b8 c cs d4 b4. b8 g16 g  g8 g4 ( a g8 ) \bar "||"
    % chorus
    g8 g\mark \markup { \teeny \italic "last time repeat ad lib. accel and key change " } c c4 c4. c8
    c16 c c8 c4 g4. b8 c cs d4 b4. d8 b16 b b8 c2~ c8 g8 g c
    c4 c4. c16 c c c c8 c4 g4. b8 c cs d4 b4. b8 d b g4 ( a g8 )
    \bar "|."
  }
}



baritone = \relative c {
  \global
  \clef "bass"
  \repeat volta 3 {
    c8 d ds e4 c4. g'16 g a g f8 e4 ( c4.) e8 e ds d4 b4.
    f'16 f e e ds8 e2~ e8 c d ds e4 c4. g'16 g a g f8 e4 ( c4. )
    e8 f fs g4 f4. e8 d16 e f8 e4 ( f e8)
    % chorus
    e8 f g a4 f4. a8
    b16 a f8 e4 c4. e8 f fs g4 f4. g8 f16 e ds8 e2~ e8 e f g
    a4 f4. a16 g b a f8 e4 c4. e8 f fs g4 f4. e8 f f e4 ( f e8)
  }
}

bass = \relative c {
  \global
  \clef "bass"
  \repeat volta 3 {
    c8 c c c4 c4. e16 e f f f8 c4 c4. c8 c a g4 g4.
    g16 g g g g8 c2~ c8 c c c c4 c4. e16 e f f f8 c4 c4.
    g8 g g g4 g4. g8 g16 g g8 c2~ c8
    % chorus
    c8 d e f4 f4. f8
    f16 f f8 c4 c4. g8 g g g4 g4. g8 g16 g g8 c2~ c8 c d e
    f4 f4. f16 f f f f8 c4 c4. g8 g g g4 g4. g8 g g c2~ c8
  }
}

verseOne = \lyricmode {
  \set stanza = \markup { \teeny \italic unison  "1."}
  I'm sat -- is -- fied with just a cot -- tage be -- low
  A lit -- tle sil -- ver and a lit _ -- tle gold
  But in that cit -- y where the ran -- somed will shine
  I want a gold one that's sil _ -- ver lined.
  \repeat unfold 42 { \skip 1 }
}

chorus = \lyricmode {
  I've got a man -- sion just o -- ver the hill -- top
  In that bright land where we'll nev -- er grow old
  And some day yon -- der we will nev -- er more wan -- der
  But walk on streets that are pur -- est gold.

}

verseTwo = \lyricmode {
  \set stanza = \markup { \teeny \italic parts "2."}
  Tho of -- ten tempt -- ed, tor- _ -- ment -- ed and tested
  And, like the proph -- et, my _ pil -- low a stone,
  And tho I find here no _ per -- ma -- nent dwell-ing,
  I know He'll give me a man -- sion my own.
}
verseThree = \lyricmode {
  \set stanza = "3."
  Don't think me poor or de- _ sert -- ed or lone-ly
  I'm not dis -- cour -- aged I'm _ heav _  -- en bound
  I'm but a pil -- grim in _  search of the cit-y
  I want a man -- sion, a harp and a crown.
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



choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  \new Lyrics \lyricsto "lead"  \verseOne
  \new Lyrics \lyricsto "lead"  { \verseTwo \chorus }
  \new Lyrics \lyricsto "lead"  \verseThree

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
  % \new Lyrics \lyricsto "tenor" \verseOne
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \lyricsto "baritone"  \verseOne
  \new Lyrics \lyricsto "baritone"  { \verseTwo \chorus }
  \new Lyrics \lyricsto "baritone"  \verseThree

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
%}

