\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    c'1
    c2 c
    c1
    c2 c
    b1
    a2 b
    c d
    d c4 h
    c1
    h
  }
}

SopranoLyrics = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
  me --
  a us --
  que ad
  mor -- _ _
  _
  tem:
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a'1
    a2 a
    a1
    a2 a
    g1
    fis2 g
    g g
    g1~
    g
    g
  }
}

AltoLyrics = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
  me --
  a us --
  que ad
  mor --

  tem:
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
  c1
  c2 f
  d1
  d2 d
  d1
  d2 d
  es d
  es1~
  es
  d
  }
}

TenoreLyrics = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
  me --
  a us --
  que ad
  mor --

  tem:
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    f1
    f2 f
    fis1
    fis2 fis
    g1
    d2 g
    es h
    c1~
    c
    g
  }
}

BassoLyrics = \lyricmode {
  Tri --
  stis est
  a --
  ni -- ma
  me --
  a us --
  que ad
  mor --

  tem:
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro"
    f1
    f2 f
    fis1
    fis2 fis
    g1
    d2 g
    es h
    c1~
    c
    g
  }
}

BassFigures = \figuremode {
  r1
  r
  <6 5>
  r
  r
  <_+>
  <6>
  <10- 9>2 <_ 8>
  r1
  <_!>
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
