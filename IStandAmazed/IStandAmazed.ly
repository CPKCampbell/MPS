\version "2.21.0"
% automatically converted by musicxml2ly from /work/colin/music/MPS/IStandAmazed/IStandAmazed.xml
%\pointAndClickOff

\include "articulate.ly"

%% additional definitions required by the score:
\language "english"


\header {
  subtitle = ""
 % "This hymn is in the public domain.  You may freely use this score for personal and congregational worship.  If you reproduce the score, please credit Hymnary.org as the source. "
  copyright =
  "This hymn is in the public domain.  You may freely use this score for personal and congregational worship.  If you reproduce the score, please credit Hymnary.org as the source. "
  encodingdate =  "2018-01-30"
  title =  "My Savior's Love"
  poet =  \markup \column {
    \line { "Text: Charles H. Gabriel (1856-1932)"}
    \line { ""}
  }

  composer =  \markup \column {
    \line { "87 87 Refrain"}
    \line { ""}
  }

  encodingsoftware =  "MuseScore 2.0.2"
}

\layout {
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne =  \relative c' {
  \clef "treble" \key af \major \numericTimeSignature\time 4/4 | % 1
  \stemUp <c ef>4 s2. | % 2
  \stemUp <c ef>4 \stemUp c \stemUp <c ef> \stemUp <c af'>8. \stemUp
  <df bf'>16 | % 3
  \stemUp <ef c'>2 \stemUp <c af'>4 \stemUp <ef af> | % 4
  \stemUp <ef g>4 \stemUp <ef g>8. \stemUp <ef g>16 \stemUp <ef af>4
  \stemUp <ef bf'>4 | % 5
  \stemUp <ef af>2. \bar ""
  s4 | % 6
  \stemUp <c ef>4 s2. | % 7
  \stemUp <df f>4 \stemUp <df f> \stemUp <f af> \stemUp <ef g>8.
  \stemUp <df f>16 | % 8
  \stemUp <c ef>2 \stemUp <ef af>4 \stemUp <f bf> | % 9
  \stemUp <ef c'>4 \stemUp <ef c'>8. \stemUp <ef c'>16 \stemUp <df
  bf'>4 \stemUp <df bf'> | \barNumberCheck #10
  \stemUp <c af'>2. r4 \bar "||"
  \stemUp c'2 ^\markup{ \italic {Refrain} } \stemUp <ef, c'>8. \stemUp
  <df bf'>16 \stemUp <c af'>4 | % 12
  \stemUp ef'2 \stemUp <ef, ef'>8. \stemUp <ef df'>16 \stemUp <ef c'>4
  | % 13
  \stemUp <ef bf'>4 \stemUp <ef bf'> \stemUp <ef bf'>4. \stemUp <ef
  c'>8 | % 14
  \stemUp <ef df'>4 \stemUp <ef c'> \stemUp <ef bf'>2 | % 15
  \stemUp c'2 \stemUp <ef, c'>8. \stemUp <df bf'>16 \stemUp <c af'>4 | % 16
  \stemUp ef'2 \stemUp <ef, ef'>8. \stemUp <ef df'>16 \stemUp <ef c'>4
  | % 17
  \stemUp <f bf>4 \stemUp c'8 ( \stemUp df ) \stemUp <ef, c'>4.
  \stemUp <ef bf'>8 | % 18
  \stemUp <ef af>4 \stemUp <df g> \stemUp <c af'> ^\fermata s \bar
  "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata = ##t
  "1 I" stand a -- mazed in the pre -- sence of Je -- sus the Na -- za
  -- "rene," and won -- der how he could love "me," a sin -- "ner,"
  con -- "demned," un -- "clean." How mar -- ve -- "lous," how won --
  der -- "ful!" And my song shall e -- ver "be:" How mar -- ve --
  "lous," how won -- der -- ful is my\skip1 Sa -- "vior's" love for
  "me!"
}

PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set ignoreMelismata = ##t
  "2 For" me it was in the gar -- den he "prayed:" "\" Not" my "will,"
  but "thine.\" " He had no tears for his own " griefs," but sweat --
  drops of blood for "mine." \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
}

PartPOneVoiceOneLyricsThree =  \lyricmode {
  \set ignoreMelismata = ##t
  "3 He" took my sins and my sor -- "rows," he made them his ve -- ry
  "own;" he bore the bur -- den to Cal -- "vary," and suf -- "fered,"
  and died a -- "lone." \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
}

PartPOneVoiceOneLyricsFour =  \lyricmode {
  \set ignoreMelismata = ##t
  "4 When" with the ran -- somed in glo -- ry his face I at last shall
  "see," "'twill" be my joy through the a -- ges to sing of his love
  for "me." \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1
}

PartPOneVoiceTwo =  \relative c' {
  \clef "treble" \key af \major \numericTimeSignature\time 4/4 s4*5
  \stemDown c4 s2*5 s2. \bar ""
  s4 s1*4 s1 \bar "||"
  \stemDown ef4 \stemUp ef s2 \stemDown ef4 \stemUp ef s2*5
  \stemDown ef4 \stemUp ef s2 \stemDown ef4 \stemUp ef s2. \stemDown
  f4 s1. \bar "|."
}

PartPTwoVoiceOne =  \relative af, {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 | % 1
  \stemDown <af af'>4 s2. | % 2
  \stemDown <af af'>4 \stemDown <af ef'> \stemDown <af af'>
  \stemDown <af af'>8. \stemDown <af af'>16 | % 3
  \stemDown <af af'>2 \stemDown <af af'>4 \stemDown <c af'> | % 4
  \stemDown <ef bf'>4 \stemDown <ef bf'>8. \stemDown <ef bf'>16
  \stemDown <ef c'>4 \stemDown <ef df'> | % 5
  \stemDown <af, c'>2. \bar ""
  s4 | % 6
  \stemDown <af af'>4 s2. | % 7
  \stemDown <df af'>4 \stemDown <df af'> \stemDown <df af'>
  \stemDown <df af'>8. \stemDown <df af'>16 | % 8
  \stemDown <af af'>2 \stemDown <c af'>4 \stemDown <df af'> | % 9
  \stemDown <ef af>4 \stemDown <ef af>8. \stemDown <ef af>16 \stemDown
  <ef g>4 \stemDown <ef g> | \barNumberCheck #10
  \stemDown <af, af'>2. r4 \bar "||"
  \stemDown <af af'>4 \stemDown <af af'> \stemDown <af af'>8.
  \stemDown <af af'>16 \stemDown <af af'>4 | % 12
  \stemDown <af' c>4 \stemDown <af c> \stemUp c8. \stemUp bf16
  \stemUp af4 | % 13
  \stemDown <ef g>4 \stemDown <ef g> \stemDown <ef g>4. \stemDown <ef
  af>8 | % 14
  \stemDown <ef bf'>4 \stemDown <ef af> \stemDown <ef g>2 | % 15
  \stemDown <af, af'>4 \stemDown <af af'> \stemDown <af af'>8.
  \stemDown <af af'>16 \stemDown <af af'>4 | % 16
  \stemDown <af' c>4 \stemDown <af c> \stemUp c8. \stemUp bf16
  \stemUp af4 | % 17
  \stemDown <df, af'>4 \stemDown <df af'> \stemDown <ef af>4.
  \stemDown <ef df'>8 | % 18
  \stemDown <ef c'>4 \stemDown <ef bf'> \stemDown <af, af'>
  ^\fermata s4 \bar "|."
}

PartPTwoVoiceOneLyricsOne =  \lyricmode {
  \set ignoreMelismata =
  ##t\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1 O how mar -- ve -- "lous!" O how won -- der --
  "ful!" \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 O how mar --
  ve -- "lous!" O how won -- der -- "ful!" \skip1 \skip1 \skip1 \skip1
  \skip1 \skip1 \skip1
}

PartPTwoVoiceTwo =  \relative af {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 s1*4 s2.
  \bar ""
  s4 s1*4 s1 \bar "||"
  s1. \stemDown af8. \stemDown af16 \stemDown af4 s1*2 s1. \stemDown
  af8. \stemDown af16 \stemDown af4 s1*2 \bar "|."
}


% The score definition
\score {
  <<

    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "2." \PartPOneVoiceOneLyricsTwo }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "4." \PartPOneVoiceOneLyricsFour }
        \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
      >>
    >>
    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceOne" {  \voiceOne \PartPTwoVoiceOne }
        \new Lyrics \lyricsto "PartPTwoVoiceOne" { \set stanza = "1." \PartPTwoVoiceOneLyricsOne }
        \context Voice = "PartPTwoVoiceTwo" {  \voiceTwo \PartPTwoVoiceTwo }
      >>
    >>

  >>
  \layout {}
}
\score {
  \unfoldRepeats \articulate {

    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {  \voiceOne \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "2." \PartPOneVoiceOneLyricsTwo }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "3." \PartPOneVoiceOneLyricsThree }
        \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "4." \PartPOneVoiceOneLyricsFour }
        \context Voice = "PartPOneVoiceTwo" {  \voiceTwo \PartPOneVoiceTwo }
      >>
    >>
    \new Staff
    <<
      \set Staff.instrumentName = "Piano"
      \set Staff.shortInstrumentName = "Pno."

      \context Staff <<
        \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
        \context Voice = "PartPTwoVoiceOne" {  \voiceOne \PartPTwoVoiceOne }
        \new Lyrics \lyricsto "PartPTwoVoiceOne" { \set stanza = "1." \PartPTwoVoiceOneLyricsOne }
        \context Voice = "PartPTwoVoiceTwo" {  \voiceTwo \PartPTwoVoiceTwo }
      >>
    >>

  }
  \midi {\tempo 4 = 100 }
}

