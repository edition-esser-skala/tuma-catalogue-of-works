\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    a'\breve
    g
    g
    f~
    f
    g
  }
}

SopranoLyrics = \lyricmode {
  Vau. __
  _
  _
  _

  _
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    r1 f~
    f2 e4 d es1
    d d~
    d2 c b1~
    b2 a4 g a2 f'~
    f e4 d es1
  }
}

AltoLyrics = \lyricmode {
  Vau. __
  _ _ _
  _ _
  _ _
  _ _ _ _
  _ _ _
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    c\breve
    c1 r2 c~
    c b4 a b1
    a d
    c\breve~
    c1 r2 c
  }
}

TenoreLyrics = \lyricmode {
  Vau. __
  _ _
  _ _ _
  _ _
  _
  _
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 2/1 \autoBeamOff \tempoMarkup "[no tempo]"
      \set Staff.timeSignatureFraction = 2/2
    f\breve
    c
    g'
    d1. e!2
    f\breve
    c
  }
}

BassoLyrics = \lyricmode {
  Vau. __
  _
  _
  _ _
  _
  _
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
