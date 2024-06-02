\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*6
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*6
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*6
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    R1*6
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    es'2\p g8 es16( d) c8 h
    c4 es f2~
    f es
    es~ es8 d16 c b!8 a!
    b2 a~
    a b
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    c'2\p es,8 g16( f) es8 d
    es4 g f as
    g1
    g2. g8 fis
    g2 es
    d1
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*6
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*6
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    c8. g16 g4 r2
    r4 c d d8 d
    d es f es16 d es4 es
    R1*3
  }
}

TenoreLyrics = \lyricmode {
  Mu -- li -- er
  quae e -- rat in
  ci -- vi -- ta -- te pec -- ca -- trix,
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Larghetto"
    R1*3
    g'8.^\solo c,16 c4 r2
    r4 g' a a8 a
    a b c b16 a b4 b
  }
}

BassoLyrics = \lyricmode {
  Mu -- li -- er
  quae e -- rat in
  ci -- vi -- ta -- te pec -- ca -- trix,
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Larghetto"
    2-\solo c4. g'8
    c,2 c
    h c
    c2. d4
    g,2 g
    fis g
  }
}

BassFigures = \figuremode {
  r2.. <_!>8
  r2 <6- 4 2>
  <6 5>1
  r2. <6- 4>8 <5! _+>
  r2 <4 2>
  <6 5>1
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "[fag]"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
