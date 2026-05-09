\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a'1
    a2 a
    a gis4 fis
    gis2. gis4
    a2 a
    a c4 c
    c2( h)
    c1
    R1*2
  }
}

SopranoLyrics = \lyricmode {
  A --
  mi -- cus
  me -- us _
  o -- scu --
  li me
  tra -- di -- dit
  si --
  gno,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    e1
    e2 e
    e e
    e2. e4
    e2 e
    f g4 g
    f2 f
    g1
    g2 g
    e g
  }
}

AltoLyrics = \lyricmode {
  A --
  mi -- cus
  me -- us
  o -- scu --
  li me
  tra -- di -- dit
  si -- gno,
  quem
  o -- scu --
  la \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    c1
    c2 c
    h h
    h2. h4
    a2 a
    a a4 a
    d1
    e2 r
    c1
    c2 h
  }
}

TenoreLyrics = \lyricmode {
  A --
  mi -- cus
  me -- us
  o -- scu --
  li me
  tra -- di -- dit
  si --
  gno,
  quem
  o -- "scu -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a1
    c2 a
    e' e
    e2. e4
    a2 g
    f e4 e
    d1
    c
    R1*2
  }
}

BassoLyrics = \lyricmode {
  A --
  mi -- cus
  me -- us
  o -- scu --
  li me
  tra -- di -- dit
  si --
  gno,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro"
    a1
    c2 a
    e'1
    e
    a2 g
    f e
    d1
    c
    \clef alto << {
      g''2 g
      e g
    } \\ {
      c,1
      c2 h
    } >>
  }
}

BassFigures = \figuremode {
  r1
  r
  <4>
  <_+>
  r
  r
  <7>2 <6>
  r1
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
