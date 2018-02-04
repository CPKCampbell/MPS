\version "2.21.0"
\language "english"

\header {
  copyright =  "Public Domain"
  encodingdate =  "2018-01-26"
  title =  "God Will Take Care of You"
  encodingsoftware =  "MuseScore 2.0.2"
  composer =  "Walter Stillman Martin"
  poet =  "Civilla Durfee Martin, 1904"
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
}

dropLyrics = {
  \override LyricText.extra-offset = #'(0 . -4.0)
  \override LyricHyphen.extra-offset = #'(0 . -4.0)
  \override LyricExtender.extra-offset = #'(0 . -4.0)
  \override StanzaNumber.extra-offset = #'(0 . -4.0)
}

raiseLyrics = {
  \revert LyricText.extra-offset
  \revert LyricHyphen.extra-offset
  \revert LyricExtender.extra-offset
  \revert StanzaNumber.extra-offset
}

global = {
  \key bf \major
  \time 6/8
}

tenor = \relative c' {
  \global
  bf8 c cs d [ f ]  f f4 ef8 d4. ef8 ef ef c4 ef8 d4. ( bf ) |
  bf8 c cs d f f f4 ef8 d4. ef8 ef ef ef4 ef8 d4.~ d |
  \bar "||" \break
  % refrain
  g4. f4 ef8 ef4 d8 d4. d8 f ef c4. c8 ef d bf4. |
  d4. f4 f8 g4 g8fs4.\fermata g8 g ef d4 c8 d4.~ d \bar "|."
}

lead = \relative c {
  \global
  d8 ef e f [ bf ] c d4 c8 bf4. f8 a g ef4 g8 f4. ( d ) |
   d8 ef e f [ bf ] c d4 c8 bf4. f8 a g f4 c'8 bf4.~ bf |
  % refrain
  bf4. a4 g8 g4 f8 f4. f8 a g ef4. ef8 g f d4. |
  f4. bf4 bf8 c [ bf ] c8 d4. c8 bf g f [ bf ] a bf4.~ bf |
  \bar "|."
}

baritone = \relative c {
  \global
  f8 f bf bf4 a8 bf4 a8 f4. a8 c bf a4 a8 bf4. ( f )  |
  f8 f bf bf4 a8 bf4 a8  f4. a8 c bf a4 a8 bf4.~  bf |
  % refrain
  bf4. bf4 bf8 bf4 bf8 bf4. f8 f f a4. a8 a f f4. |
  bf4. bf4 bf8 bf4 g8 a4.\fermata g8 bf bf f4 f8 f4.~ f \bar "|."

}

bass = \relative c {
  \global
  bf8 bf bf bf [d] f bf4 f8 bf,4. f'8 f f f4 f8 bf,4.~ bf |
  bf8 bf bf bf [d] f bf4 f8 bf,4. f'8 f f f4 f8 bf,4.~ bf |
  % refrain
  ef4. ef4 ef8 bf4 bf8 bf4. f'8 f f f4. f8 f f bf,4. |
  bf4. d4 d8 ef4 ef8 d4.\fermata ef8 ef ef f4 f,8 bf4.~ bf \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
Be not dis -- mayed _ what -- e’er be -- tide,
God   will take care of you;
Be -- neath His wings _  of love a -- bide,
God will take care of you.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Through days of toil _ when heart doth fail,
  God will  take care of you;
  When dan -- gers fierce _ your path as -- sail,
  God will take care of you.

}

verseThree = \lyricmode {
  \set stanza = "3."
 All you may need _ He will pro -- vide,
 God will take  care of you;
 No -- thing you ask _ will be de -- nied,
 God will take care of you.
}

refrain = \lyricmode {
  % \dropLyrics
  God will take care of you,
  through ev -- ery day, o’er all the way;
  He will take care of you,
  God will take care of you
 %  \raiseLyrics
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92 4)
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
     % shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" { \verseOne \refrain }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
%      shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=92
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

