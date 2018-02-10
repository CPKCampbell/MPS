\version "2.21.0"
\language "english"

\header {
  title = "Life's Railway To Heaven"
  composer = "Charles D. Tillman"
  poet = "Eliza R. Snow; M.E. Abbey"
%  arranger = \markup {\column {"Arr. C. Campbell" \tiny \italic "for The Mighty Power Singers"} }
  tagline = "public domain"
}

\paper {
  #(set-paper-size "letter")
% page-count = #1
systems-per-page = #6
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
  \key af \major
  \time 4/4
    \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  
}

tenor = \relative c' {
  \global
 c8 c c4. af8 bf c bf4 af2 af8 af af4. bf8 af f ef2 ef8. 16 af4. ef8 af bf |
  c8 c4. af8. af16 bf4. 8 af c bf2 c8 c c4. af8 bf c bf4 af af8. af16 |
  af4. bf8 af8. f16 ef2 ef8 ef af4. ef8 af bf |
  c8  c4. af8. bf16 c4. g8 bf8. bf16 af2 \bar "||"
  %refrain
df8. 16 4. 8 af8 bf c4 c ef8 ef ef4. c8 bf df ef2
  c8 df ef4. c8 bf af af4 af af8 bf c4. af8 bf bf af2
  \bar "|."
}

lead = \relative c' {
  \global
  c8 c c4. af8 bf c bf4 af2 af8 af af4. bf8 af f ef2 ef8. 16 af4. ef8 af bf |
  c8 c4. af8. af16 bf4. 8 af c bf2 c8 c c4. af8 bf c bf4 af af8. af16 |
  af4. bf8 af8. f16 ef2 ef8 ef af4. ef8 af bf |
  c8  c4. af8. bf16 c4. g8 bf8. bf16 af2 \bar "||"
  \break
  % chorus

  % refrain
  af8. af16 af4. af8 af af af4 af c8 c c4. c8 bf af bf2 af8 bf |
  c4. c8 g af f4 af af8 af af4. ef8 ef ef ef2
}

baritone = \relative c {
  \global
 ef8 ef ef4. c8 df ef df4 c2 c8 c  f4. f8 f df c2 c8. c16 c4. c8 c df  ef8 ef4. c8. c16 |
 d4. d8 f af g2 ef8 ef ef4. c8 df ef df4 c c8. c16 |
 f4. f8 f8. df16 c2 c8 c c4. c8 c df ef ef4. c8. df16 ef4. c8 df8. df16 c2
 % refrain
 f8. f16 f4. f8 f e ef4 ef af8 af af4. af8 g f g2 ef8 ef |
 af4. ef8 ef ef df4 f f8 ff ef4. c8 df df c2

}

bass = \relative c {
  \global
 ef8 ef ef4. c8 df ef df4 c2 c8 c  f4. f8 f df c2 c8. c16 c4. c8 c df  ef8 ef4. c8. c16 |
 d4. d8 f af g2 ef8 ef ef4. c8 df ef df4 c c8. c16 |
 f4. f8 f8. df16 c2 c8 c c4. c8 c df ef ef4. c8. df16 ef4. c8 df8. df16 c2
 % refrain
df8. df16 4. 8 8 8 af4 af ef'8 ef ef4. ef8 ef f ef2 af,8 af |
af4. af8 bf c df4 df df8 df af8_\markup{  "In Thy praise" } bf c  af bf bf af2
}

verseOne = \lyricmode {
  \set stanza = "1."
  Life is like a moun -- tain rail -- way,
  With an en -- gin -- eer that’s brave;
  We must make the run suc -- cess -- ful,
  From the cra -- dle to the grave;
  Watch the curves, the fills the tun -- nels;
  Nev -- er fal -- ter, nev -- er fail;
  Keep your hands up -- on the throt -- tle,
  And your eyes up -- on the rail.
  %
  Bless -- ed Sa -- viour, Thou wilt guide us,
  Till we reach that bliss -- ful shore,
  Where the an -- gels wait to join us
  In Thy praise for ev -- er more.

}

verseTwo = \lyricmode {
  \set stanza = "2."
You will roll up grades of tri -- al;
You will cross the bridge of strife;
See that Christ is your con -- duc -- tor
On this light -- ning train of life;
Al -- ways mind -- ful of ob -- struc -- tion,
Do your du -- ty, nev -- er fail;
Keep your hands up -- on the throt -- tle,
And your eyes up -- on the rail.
}

verseThree = \lyricmode {
  \set stanza = "3."
  You will of -- ten find ob -- struc -- tions,
Look for storms and wind and rain;
On a fill, or curve, or tres -- tle
They will al -- most ditch your train;
Put your trust a -- lone in Je -- sus,
Nev -- er fal -- ter, nev -- er fail;
Keep your hands u -- pon the throt -- tle,
And your eyes u -- pon the rail.

}

verseFour = \lyricmode {
  \set stanza = "4."
 As you roll a -- cross the tres -- tle,
Span -- ning Jor -- dan’s swell -- ing tide,
You be -- hold the Uni -- on De -- pot
In -- to which your train will glide;
There you’ll meet the Su -- p’rin -- ten -- dent,
God the Fath -- er, God the Son,
With the hear -- ty, joy -- ous plau -- dit,
“Wear -- y Pil -- grim, wel -- come home.”
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
      midiInstrument = "voice oohs"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
  %    shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "bass"
      \new Voice = "tenor1" { \voiceOne \tenor }
     \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor2" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFour

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
 %     shortInstrumentName = \markup \center-column { "Bar" "Bass" }
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

