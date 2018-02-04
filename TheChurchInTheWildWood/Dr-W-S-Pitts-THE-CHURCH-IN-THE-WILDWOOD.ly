\version "2.21.0"
\language "english"

\header {
  title = "THE CHURCH IN THE WILDWOOD"
  composer = "Dr. W.S. Pitts"
  poet = "W.S.P."
  tagline = "Engraved by CPKC.Music"
}

#(set-global-staff-size  18)
\paper {
  #(set-paper-size "letter")
  ragged-last-bottom  = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key bf \major
  \time 4/4
  \partial 4
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
    d8. 16 4 ef8. d16 8 8 8. ef16 f2 ef4 4 4 c8. d16 ef4 f8. ef16 d2. d8 (f) |
    ef4 ef8. f16 g4 f8. ef16 d2 d4 ef8. ef16 ef ef8. ef ef16 ef4 ef8. ef16 d2.
    \bar "||"
    % chorus
    f8. ef16 d8 r d r d r d r d r ef r d r d r f r f r ef r ef r ef r ef r ef r f r d r ef r d r  d f |
    ef4 ef8. f16 g4 f8. ef16 d2 d4 ef8. 16 16 8. 4 4 8. 16 d2.
  } \break
  % vs 4
  r4 d2 (^\markup { \italic \teeny "Hum " }  d4 d8. ef16 f2 ef4) r ef2( ef4 f8. ef16 d2.)
  d8 f ef4 8. f16 g4 f8 ef d2~ d4 r4 ef1^\markup { \italic \teeny "Hum " } ( d2. )
  %
  f8. ef16 d8 r d r d r d r d r ef r d r d r f r f r ef r ef r ef r ef r ef r f r d r ef r d r  d f |
  ef4 ef8. f16 g4 f8. ef16 d2 d4 ef8. 16 16 8. 4 4 8. 16 d2.
\bar "|."
}

lead = \relative c' {
  \global
  \repeat volta 3 {
    f,8. 16 4 g8. f16 f8 f bf8. c16 d2 c4 c f, a8. bf16 c4 d8. c16 bf2. bf8 a |
    g4 g8. a16 bf4 a8. g16 f4 (bf) f a8. g16 f16 8. 8. 16 4 g8. a16 bf2.
    % chorus
    d8. c16 bf8 r bf r bf r bf r f4 g8. f16 f4 bf8. c16 d2 c4 c f, a8. bf16 c4 d8. c16 bf2~ bf4 bf8 a |
    g4 8. a16 bf4 a8. g16 f4 (bf) f a8. g16 f f8. f4 f g8. a16 bf2.
  }
  % vs 4
  r4 bf1 bf2 ( a4) r a4 (f8. g16 a2 bf2.)
  bf8 a g4 g8. a16 bf4 a8 g f4 (bf) f c'8 bf a4 8. 16 4 g8. f16 f2.
  %
   d'8. c16 bf8 r bf r bf r bf r f4 g8. f16 f4 bf8. c16 d2 c4 c f, a8. bf16 c4 d8. c16 bf2~ bf4 bf8 a |
    g4 8. a16 bf4 a8. g16 f4 (bf) f a8. g16 f f8. f4 f g8. a16 bf2.
}

baritone = \relative c' {
  \global
  \repeat volta 3 {
    bf8. 16 4 8. 16 8 8 f8. 16 bf2 a4 4 4 f8. 16 a4 8. 16 f2. f4
    bf4 8. 16 4 8. 16 bf4 (f) bf f8. g16 a16 8. 8. 16 4 8. f16 f2.
    \bar "||"
    % chorus
    a4 f8 r f r f r f r bf r bf r bf r f r bf r bf r a r a r a r c r a r a r f r g r f r f4 |
    bf4 8. 16 4 8. 16 bf4 (f) bf f8. g16 a16 8. 4 4 8. f16 f2.
  }
  % vs 4
  r4 f1^ \markup { \italic \teeny "Hum " }~ f2~ f4 r f1~ f2.
  f8 f bf4 bf bf bf8 bf bf4 (f) bf a8 g f4 8. 16 4 g8. a16 bf2.
  a4 f8 r f r f r f r bf r bf r bf r f r bf r bf r a r a r a r c r a r a r f r g r f r f4 |
    bf4 8. 16 4 8. 16 bf4 (f) bf f8. g16 a16 8. 4 4 8. f16 f2.
}

bass = \relative c {
  \global
  \repeat volta 3 {
    bf8. 16 4 8. 16 8 8 8. 16 bf4 (d) f f
    f  f8. 16 4 8. 16 bf,2. 8 d8 ef4
    ef8. 16 4 8. 16 bf2 bf4 c8. 16 16 8. 8. 16 f,4 8. 16 bf2.
    % chorus
    f'4 bf,8 r bf r bf r bf r bf r bf r bf r bf r bf r bf r f' r f r f r f r f r f r bf, r bf r bf r bf d
    ef4 8. 16 4 8. 16 bf2 4 c8. 16 16 8. 4 f,4 f8. 16 bf2.
  }
  % vs4
  f4 f g8. f16 f4 bf8. c16 d2 c4 c8 c f,4 a8. bf16 c4 d8. c16 bf2.
  bf8 d ef4 ef ef  ef8 ef bf2 bf4 r c2(_ \markup { \italic \teeny "Hum " } f, bf2.)
  % chorus
 r4 R1 f4  g8. f16 f4 bf8. c16 d2
c4 c f, a8. bf16 c4 d8. c16 bf2~ bf4
  bf8 d ef4 ef8. ef16 ef4 ef8. ef16 bf2 bf4 c8. 16 16 8. 4 f,4 8. 16 bf2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  There’s a church in the val -- ley by the wild -- wood,
  No lov -- li -- er place in the dale;
  No spot is so dear to my child -- hood
  As the lit -- tle brown _ church in the vale.
  %chorus
  \repeat unfold 6 { \skip 1 }
  \set associatedVoice = "tenor2"
   Come to the church in the wild -- wood
  Oh, come to the church in the dale __
 }

 leadChorus = \lyricmode {
   \repeat unfold 45 { \skip 1 }
   Come to the church in the wild -- wood
  Oh, come to the church in the dale __
 }

verseTwo = \lyricmode {
  \set stanza = "2."
  How _ sweet on a clear _ Sab -- bath morn -- ing,
  To list to the clear ring -- ing bell;
  Its tones so _ sweet -- ly are call -- ing:
  “Oh, _ come _ to the church in the vale.”

}

verseThree = \lyricmode {
  \set stanza = "3."
  There, _  close by the church _ in the val -- ley,
  Lies one that I loved so _ well;
  She  sleeps, sweet -- ly sleeps ’neath the wil -- lows:
  Dis -- _ turb _ not her rest in the vale.
% chorus
Oh, _ come come, come come, come come, come come, come,
come come, come come, come come, come come, come, come,
No _ spot is so dear to my child -- hood,
As the lit -- tle brown church in the vale.
}

verseFour = \lyricmode {
  \set stanza = "4."
  \repeat unfold 78 { \skip 1 }
  There,  close by the side of that loved one,
’Neath the tree where the wild flow -- ers
\set associatedVoice = "tenor2"
bloom,
When the fare -- well _ hymn shall be chan --  ted,
I shall rest by her side in the tomb.
\set associatedVoice = "tenor1"
%chorus
Oh, _ come come, come come, come come, come come, come,
come come, come come, come come, come come, come, come,
No _ spot is so dear to my child -- hood,
As the lit -- tle brown church in the vale.
}

lastBass = \lyricmode {

  \repeat unfold 106 { \skip 1 }
  Come to the church in the wild -- wood
  Oh, come to the church in the vale __
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
      %     shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree

    \new Staff = "basses" \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      %      shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
         \new Lyrics \with {
           alignAboveContext = #"basses"

    } \lyricsto "bass2" \verseFour

    \new Lyrics \with {
           alignBelowContext =  #"basses"
    } \lyricsto "bass2" \lastBass
  >>
  >>
  \layout { }
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

