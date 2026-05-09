\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    a'2. gis4
    a2 h
    c e
    a,1
    gis2 h
    e2. e4
    c1
    a4 h c a
    d1
    h2 c
    c h4 a
    h1
    c\breve*1/2
  }
}

SopranoLyrics = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
  ter --
  rae et
  prin -- ci --
  pes
  con -- _ ve -- _
  ne --
  runt in
  u -- _ _
  _
  num,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    e2. e4
    e2 e
    e e
    e d
    e1
    r2 e
    e2. e4
    f1
    f2 a
    g g4 g
    g1~
    g
    g\breve*1/2
  }
}

AltoLyrics = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
  ter -- _
  rae
  et
  prin -- ci --
  pes
  con -- ve --
  ne -- runt in
  u --

  num,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    c2. d4
    e2 d
    c h
    h a
    h1
    r2 gis
    a2. a4
    a1
    d2 d
    d e4 e
    d1~
    d
    e\breve*1/2
  }
}

TenoreLyrics = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
  ter -- _
  rae
  et
  prin -- ci --
  pes
  con -- ve --
  ne -- runt in
  u --

  num,
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    a'2. h4
    c2 h
    a g
    f1
    e2 r
    r e
    a2. a4
    f1
    d4 e f d
    g2 c,4 c
    g1~
    g
    c\breve*1/2
  }
}

BassoLyrics = \lyricmode {
  A -- sti --
  te -- runt
  re -- ges
  ter --
  rae
  et
  prin -- ci --
  pes
  con -- _ ve -- _
  ne -- runt in
  u --

  num,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegretto"
    a'2. h4
    c2 h
    a g
    f1
    e
    r2 e
    a2. a4
    f1
    d4 e f d
    g2 c,
    g1~
    g
    c\breve*1/2
  }
}

BassFigures = \figuremode {
  r2. <6\\>4
  <6>1
  r2 q
  <7> <6>
  <_+>1
  r
  r
  r
  r
  r
  <4>
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
