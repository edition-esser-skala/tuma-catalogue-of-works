\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    a'1
    a2 a
    b a
    b1
    a2 c
    c1
    c2 c
    c h
    c r
  }
}

SopranoLyrics = \lyricmode {
  In
  mon -- te
  O -- li --
  ve --
  ti o --
  ra --
  vit ad
  Pa -- _
  trem:
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    f1
    f2 f
    f f
    g1
    f2 g
    a a4 a
    g1
    f2 r
    g1
  }
}

AltoLyrics = \lyricmode {
  In
  mon -- te
  O -- li --
  ve --
  ti o --
  ra -- vit ad
  Pa --
  trem:
  "Pa -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    c1
    c2 c
    d c
    d c
    c c
    a1
    c2 g
    a f
    e r
  }
}

TenoreLyrics = \lyricmode {
  In
  mon -- te
  O -- li --
  ve -- _
  ti o --
  ra --
  vit ad
  Pa -- _
  trem:
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    f1
    f2 f
    b, f'
    f e
    f e
    f1
    e2 e
    d1
    c2 r
  }
}

BassoLyrics = \lyricmode {
  In
  mon -- te
  O -- li --
  ve -- _
  ti o --
  ra --
  vit ad
  Pa --
  trem:
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegretto"
    f1~
    f2 f
    b, f'~
    f e
    f e
    f1
    e
    d
    c
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  <4 2>2 <6 5>
  r1
  r
  r
  <7>2 <6!>
  r1
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
