\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve*3
    a'\breve
    g1 f
    g\breve
    f1. g2
  }
}

SopranoLyrics = \lyricmode {
  Iod. __
  _ _
  _
  _ _
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve
    r1 a'~
    a g
    f\breve
    d\breve
    b1 c
    d f~
  }
}

AltoLyrics = \lyricmode {
  Iod. __
  _
  _
  _
  _ _
  _ _
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    R\breve
    d
    c1 b
    d c
    b a
    g1. a2
    b1 d
  }
}

TenoreLyrics = \lyricmode {
  Iod. __
  _ _
  _ _
  _ _
  _ _
  _ _
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a'\breve
    g1 f~
    f g
    d f
    g d
    es\breve
    b1 b'
  }
}

BassoLyrics = \lyricmode {
  Iod. __
  _ _
  _
  _ _
  _ _
  _
  _ _
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

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
  >>
}
