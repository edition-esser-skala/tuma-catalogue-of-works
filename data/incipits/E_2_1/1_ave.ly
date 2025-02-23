\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key f \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
      \set Staff.timeSignatureFraction = 2/2
    f1 g
    b a2 a
    c1 f,2 f
    a2. g8[ f] g1~
    g f2 a~
    a g b1
    a2 a1 a2
  }
}

SopranoLyrics = \lyricmode {
  A -- ve,
  a -- ve Re --
  gi -- na coe --
  lo -- _ _
  rum, sal --
  ve ra --
  dix, sal -- ve
}

Alto = {
  \relative c' {
    \clef alto
    \key f \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
      \set Staff.timeSignatureFraction = 2/2
    r1 c
    d f
    e2 e f1
    c2 f g e
    d1 d2 f~
    f f f e
    f f1 f2
  }
}

AltoLyrics = \lyricmode {
  A --
  ve, a --
  ve Re -- gi --
  na coe -- lo -- _
  _ rum, sal --
  ve ra -- _
  dix, sal -- ve
}

Tenore = {
  \relative c' {
    \clef tenor
    \key f \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
      \set Staff.timeSignatureFraction = 2/2
    R\breve
    r1 f,
    g b2. b4
    a2 d1 c2
    c b a c~
    c d d b
    c c1 d2
  }
}

TenoreLyrics = \lyricmode {
  A --
  ve Do -- mi --
  na An -- ge --
  lo -- _ rum, sal --
  ve ra -- _
  dix, sal -- ve
}

Basso = {
  \relative c {
    \clef bass
    \key f \major \time 4/2 \tempoMarkup "[no tempo]" \autoBeamOff
      \set Staff.timeSignatureFraction = 2/2
    R\breve*2
    c1 d
    f2 f4 f e2 e
    g1 d2 a~
    a b g1
    f2 f'1 d2
  }
}

BassoLyrics = \lyricmode {
  A -- ve %3
  Do -- mi -- na An -- ge --
  lo -- rum, sal --
  ve ra --
  dix, sal -- ve
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
