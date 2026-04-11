\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Alla capella · Tempo moderato" \autoBeamOff
    c'1~
    c2 c
    c1
    c2 c
    c h
    e e
    d4 c d2
    c h
    a1
    gis2 a~
    a g~
    g fis
    g1
  }
}

SopranoLyrics = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
  san -- cto
  su -- _ o
  vo -- cem
  me --
  am al --
  le --
  lu --
  ia,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Alla capella · Tempo moderato" \autoBeamOff
    g'1~
    g2 g
    a1
    a2 a
    f f
    g g
    g e
    e e
    e d
    e e
    fis d
    d1
    d
  }
}

AltoLyrics = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
  san -- cto
  su -- o
  vo -- cem
  me -- _
  am al --
  _ le --
  lu --
  ia,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Alla capella · Tempo moderato" \autoBeamOff
    e1~
    e2 e
    e1
    e2 c
    a d
    g, c
    c h
    a gis
    a1
    h2 c~
    c h
    a1
    g2 h
  }
}

TenoreLyrics = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
  san -- cto
  su -- o
  vo -- cem
  me --
  am al --
  le --
  lu --
  ia, et
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Alla capella · Tempo moderato" \autoBeamOff
    c1~
    c2 c
    a1
    a2 a
    d d
    c4 d e f
    g2 gis
    a e
    f1
    e2 c
    d1~
    d2 d
    g, g
  }
}

BassoLyrics = \lyricmode {
  Ex --
  au --
  di --
  vit de
  tem -- plo
  san -- _ cto _
  su -- o
  vo -- cem
  me --
  am al --
  le --
  lu --
  ia, et
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key c \major \time 2/2 \tempoMarkup "Alla capella · Tempo moderato"
    c1~
    c2 c
    a1
    a2 a
    d d
    c4 d e f
    g2 gis
    a e
    f1
    e2 c
    d1~
    d2 d
    g, g
  }
}

BassFigures = \figuremode {
  <5 3>1
  <\t \t>
  <5>
  <\t>
  <7 _!>2 <6>
  r1
  r2 <6 5>
  r <_+>
  <7> <6>
  <_+> <6>
  <7 _+> <6 4>
  <5 \t> <\t _+>
  r <3>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" }
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
