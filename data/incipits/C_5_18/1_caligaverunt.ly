\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    b'2 b4 c
    d2 c
    b d4 d
    b1
    a
    r2 d
    cis d
    r g,
    g f
  }
}

SopranoLyrics = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  me --
  i
  a
  fle -- tu,
  a
  fle -- tu
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g4 g
    g2. fis4
    g2 a4 a
    a g8[ fis] g2
    fis1
    r2 b
    a a
    r d,
    e d
  }
}

AltoLyrics = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  me -- _ _
  i
  a
  fle -- tu,
  a
  fle -- tu
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d2 d4 c
    b2 c
    d d4 d
    d1
    d
    r2 d
    e f
    r d
    cis a
  }
}

TenoreLyrics = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  me --
  i
  a
  fle -- tu,
  a
  fle -- tu
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'2 g4 a
    b2 a
    g fis4 fis
    g1
    d
    r2
    g
    g f!
    r b,
    a a
  }
}

BassoLyrics = \lyricmode {
  Ca -- li -- ga --
  ve -- runt
  o -- cu -- li
  me --
  i
  a
  fle -- tu,
  a
  fle -- tu
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Moderato"
    g'2. a4
    b2 a
    g fis
    g1
    d
    r2 g~
    g f!
    r b,
    a1
  }
}

BassFigures = \figuremode {
  r1
  r2 <7>4 <6\\>
  r2 <6>
  r1
  <_+>
  r
  <4\+ 2>2 <6>
  r q
  <7 _+> <6 4>
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
