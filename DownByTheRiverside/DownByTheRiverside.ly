\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  title = "Down By The Riverside"
  composer = "Traditional"
  poet = ""
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
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
    \override VerticalAxisGroup.staff-affinity = #CENTER
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    \override LyricText.self-alignment-X = #LEFT
  }
}

global = {
  \key af \major
  \time 4/4
  \partial 8
  \autoBeamOff
}

tenor = \relative c' {
  \global
  r8 R1 ef4 ef8. d16 ef df8. c4 df4 df8. ef16 df df8. df4 |
  f4 f8. 16 16 df8. c4 ~ c1 |
  ef4 ef8. d16 ef df8. c8 c16 c ef8 df4. ef4 df c2. \bar "||" gf'16 gf gf gf \break
  \repeat volta 2 {
    f16 f f4 f8 f4 f16 f ff ff ef ef ef4 ef8 ef4 c16 c c c
  }
  \alternative {
    {ef16 df4.. c4 ef ef2~ ef4 gf16 gf gf gf }
    {ef8 df4. ef4 df c2. }
  }
  \bar "|."
}

lead = \relative c' {
  \global
  c16 b c8 ef,4 f8 f  af  af4 c c8. b16 c bf8. af4 bf bf8. bf16 bf af8. f4 |
  af4 af8. bf16 af f8. ef8 c'16 b c8 ef,4 f8 f  af  af4 |
  c4 c8. b16 c bf8.  af8 af16 af c8 bf4.  c4 bf af2. bf16 bf c c
  \repeat volta 2 {
    df16 df df4 df8 df4 af16 af bf bf c c c4 c8 c4 af16 af af af
  }
  \alternative {
    {c16 bf4.. af4 bf c2~ c4 ef16 ef ef ef }
    { c8 bf4. c4 bf af2. }
  }
}

baritone = \relative c' {
  \global
 df,8\rest \override MultiMeasureRest.staff-position = #0 R1 af'4 af8. f16 ef ef8. ef4 f f8. f16 f f8. af4 |
 df4 df8. df16 df af8. af4( ef1 )
 af4 af8. af16 af ef8. ef8 ef16 ef  g8 g4. g4 ef ef2. \bar "||" af16 af af af
 \repeat volta 2 {
   af16 af af4 af8 af4 df16 df df df c c af4 af8 af4 af16 af af af }
 \alternative {
   {g16 g4.. af4 g af2~ af4 af16 af af af }
   { g8 g4. g4 ef ef2. }
 }
 \bar "|."
}

bass = \relative c {
  \global
 s8 s1 af4 af8. af16 af af8. af4 df df8. df16 df df8. df4 |
 df4 df8. df16 df df8. af4~ af1
 af4 af8. af16 af af8. af8 af16 af ef'8 ef4. ef4 ef af,2. ef'16 ef ef ef
 \repeat volta 2 {
   df16 df df4 df8 df [ ef ] f16 f  g g af af ef4 c8 af4 ef'16 ef ef ef }
 \alternative {
   {ef16 ef4.. f4 ef16_\markup {  "Ain't a-goin' to study war no more. " } ef ef ef af af8. ef8 c af4 bf16 bf c c }
   {ef8 ef4. ef4 ef af,2. }
 }

}

verseOne = \lyricmode {
  \set stanza = "1."
  Goin' to lay down my bur --  _ den, Down by the riv -- er -- side
  Down by the riv -- er -- side, Down by the riv -- er -- side
  Goin' to lay down my bur -- _ den, Down by the riv -- er -- side
  Goin' to stud -- y war no more.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Goin' to lay down my sword and shield, Down by the riv -- er -- side
  Down by the riv -- er -- side, Down by the riv -- er -- side
  Goin' to lay down my sword and shield, Down by the riv -- er -- side
  Goin' to stud -- y war no more.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Goin' to try on my star -- ry crown, Down by the riv -- er -- side
  Down by the riv -- er -- side, Down by the riv -- er -- side
  Goin' to try on my star -- ry crown,  Down by the riv -- er -- side
  Goin' to stud -- y war no more.

}

refrain = \lyricmode {
  Ain't a -- goin' to stud -- y war no more, Ain't a -- goin' to stud -- y war no more,
  Ain't a -- goin' to stud -- y war no more, Ain't a -- goin' to stud -- y war no more,
  Ain't a -- goin' to stud -- y war no more, Ain't a -- goin' to stud -- y war no more.
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
    \new Lyrics  \lyricsto "lead" \verseOne
    \new Lyrics  \lyricsto "lead" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "lead" \verseThree

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
%      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
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

