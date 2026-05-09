\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco" \autoBeamOff
    a'2 h
    c h4 a
    gis2 h
    e d
    c h
    a1~
    a2 e
    d1~
    d
    c\breve*1/2
  }
}

SopranoLyrics = \lyricmode {
  Ae -- sti --
  ma -- tus _
  sum cum
  de -- scen --
  den -- ti --
  bus __
  in
  la --

  cum,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco" \autoBeamOff
    e2 e
    a e
    e r
    r gis
    e f4 g
    a2 g
    f c
    c h4 a
    h1
    c\breve*1/2
  }
}

AltoLyrics = \lyricmode {
  Ae -- sti --
  ma -- tus
  sum
  cum
  de -- scen -- _
  den -- ti --
  bus in
  la -- _ _
  _
  cum,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco" \autoBeamOff
    c2 d
    e d4 c
    h2 r
    r h
    c d
    d e
    a,1
    r2 g
    g1
    g\breve*1/2
  }
}

TenoreLyrics = \lyricmode {
  Ae -- sti --
  ma -- tus _
  sum
  cum
  de -- scen --
  den -- ti --
  bus
  in
  la --
  cum,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco" \autoBeamOff
    a2 a
    a a
    e'1
    r2 e
    a g
    f e
    d c
    g1~
    g
    c\breve*1/2
  }
}

BassoLyrics = \lyricmode {
  Ae -- sti --
  ma -- tus
  sum
  cum
  de -- scen --
  den -- ti --
  bus in
  la --

  cum,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Moderato un poco"
    a1
    a
    e'
    r2 e
    a g
    f e
    d c
    g1
    g
    c\breve*1/2
  }
}

BassFigures = \figuremode {
  r1
  r
  <_+>
  r
  r
  <6>
  r2 q
  <4>1
  <3>
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
