\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    b'1
    b
    a
    d2 d
    d1
    c2 c
    d d,
    fis a
    d1~
    d
  }
}

SopranoLyrics = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
  im --
  _ pi --
  us sum --
  mis prin --
  "ci -"
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    g'1
    g
    fis
    fis2 fis
    g1~
    g2 g
    fis r
    R1*3
  }
}

AltoLyrics = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
  im --
  pi --
  us
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    d1
    d
    d
    a2 a
    g1~
    g2 g
    a r
    R1
    r2 g
    b d
  }
}

TenoreLyrics = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
  im --
  pi --
  us

  sum --
  mis "prin -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    g'1
    g
    d
    d2 d
    es1~
    es2 es
    d r
    R1*3
  }
}

BassoLyrics = \lyricmode {
  Je --
  sum
  tra --
  di -- dit
  im --
  pi --
  us
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto"
    g'1
    g
    d
    d
    es
    es
    d2 \clef soprano d'-!
    fis-! a-!
    d-! \clef tenor g,,
    b d
  }
}

BassFigures = \figuremode {
  r1
  r
  <_+>
  r
  <7>
  <6>
  <_+>
  r
  r
  r
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
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
