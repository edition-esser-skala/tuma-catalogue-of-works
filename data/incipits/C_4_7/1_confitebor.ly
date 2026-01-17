\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
    R1*7 %7
    \mvTr a'2\f^\tutti a
    b1
    a2 b4 a
  }
}

SopranoLyrics = \lyricmode {
  Con -- fi --
  te --
  bor ti -- bi
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
    R1*9
    \mvTr d2\f^\tutti d
  }
}

AltoLyrics = \lyricmode {
  Con -- "fi -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
    \mvTr a2\f^\tutti a
    b1
    a2 b4 a
    g a b c
    d d g, b
    c b g a
    b2 a4 g
    c2 d4 c
    b a g2~
    g fis
  }
}

TenoreLyrics = \lyricmode {
  Con -- fi --
  te --
  bor ti -- bi
  Do -- _ _ mi --
  ne in to -- to
  cor -- _ _ de
  me -- _ _
  _ _ _
  _ _ _
  \hy
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \autoBeamOff \tempoMarkup "Moderato"
    R1*2
    \mvTr d2\f^\tutti d
    es1
    d2 es4 d
    c d es f
    g d g2~
    g fis
    g4 a b g
    d1
  }
}

BassoLyrics = \lyricmode {
  Con -- fi --
  te --
  bor ti -- bi
  Do -- _ _ mi --
  ne in to --
  to
  cor -- _ _ de
  "me -"
}

Organo = {
  \relative c {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato"
    \mvTr a'1-!\f-\tutti
    b-!
    \clef bass d,
    es
    d2 es4 d
    c d es f
    g d g2~
    g fis
    g4 a b g
    d1
  }
}

BassFigures = \figuremode {
  r1
  r
  <5>2 <6>4 <5>
  <3> <4> <5> <6>
  <8>2 <3>4 <6>
  <8> <6> <3> q
  q <\t>2.
  <4 2>2 <6>4 <5>
  r2 <6>
  <5 4> <\t _+>
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
        \set Staff.instrumentName = \markup \center-column { "T" "vla" }
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
