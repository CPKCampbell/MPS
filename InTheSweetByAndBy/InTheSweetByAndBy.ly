\version "2.21.0"
\language "english"

\header {
  title = "In The Sweet By And By"
  composer = "Joseph Philbrick Webster"
  poet = "Sanford Fillmore Bennet, 1868"
  tagline = ""
  copyright = \markup { \center-column { "Public Domain" "Courtesy of the Cyber Hymnal" } }
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
      \override LyricText.self-alignment-X = #LEFT
    }
    }

global = {
  \key g \major
  \time 4/4
  \tempo 4=105
  \partial 4
}

tenor = \relative c' {
  \global
  \clef "treble_8"
 b8. c16 d4 d8 d c4 g8 g g2. g8. fs16 d'4 d8. g,16 b4 b8. d16 fs,2.
 b8. c16 d4 d8 d c4 g8 g g2. g8. fs16 g4 g8 g c4 b8 a b2. \bar "||" \break
 %refrain
 r4 r g8 a b4 d8. d16 d4 d8 d d4 d8. d16 d4 d8 d d4 d8 d  d4 d8 d d4 r  |
r4 g,8 a b4 d8. d16 c4 c8 c c4 g8 g g4 b8 d c4 b8 a b2. \bar "|."

}

lead = \relative c' {
  \global
  \clef "treble_8"
 g8. a16 b4 a8 g a4 g8 e d2.
 g8. a16 b4 b8. b16 d4 d8. b16 a2.
  g8. a16 b4 a8 g a4 g8 e d2.
   g8. a16 b4 a8 g a4 g8 fs g2.
  % refrain
  b8. c16 d2. d8. b16 a2. a8. b16 c4 c8 c c4 b8 a b2.
  b8. c16 d2. b8. a16 g2. fs8 e d4 g8 b a4 g8 fs g2.
  \bar "||"
}



baritone = \relative c' {
  \global
  % Music follows here.

}

bass = \relative c {
  \global
  % Music follows here.

}

verseOne = \lyricmode {
  \set stanza = "1."
  There’s a land that is fair -- er than day,
And by faith we can see it a -- far;
For the Fa -- ther waits o -- ver the way
To pre -- pare us a dwel -- ling place there.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  We shall sing on that beau -- ti -- ful shore
The me -- lo -- di -- ous songs of the blessed;
And our spir -- its shall sor -- row no more,
Not a sigh for the bless -- ing of rest.

}

verseThree = \lyricmode {
  \set stanza = "3."
  To our boun -- ti -- ful Fa -- ther a -- bove,
We will of -- fer our trib -- ute of praise
For the glo -- ri -- ous gift of His love
And the bless -- ings that hal -- low our days.

}

refrain = \lyricmode {
  In the sweet by and by,
We shall meet on that beau -- ti -- ful shore;
In the sweet by and by,
We shall meet on that beau -- ti -- ful shore.
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
   \new Lyrics  \lyricsto "lead" \verseOne
    \new Lyrics  \lyricsto "lead" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "lead" \verseThree
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
 \new  Lyrics \lyricsto "tenor"  \verseOne
    \new Lyrics  \lyricsto "tenor" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor" \verseThree

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics  \lyricsto "baritone" \verseOne
    \new Lyrics  \lyricsto "baritone" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "baritone" \verseThree
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
   \new Lyrics  \lyricsto "bass" \verseOne
    \new Lyrics  \lyricsto "bass" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "bass" \verseThree
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

% Rehearsal MIDI files:
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

