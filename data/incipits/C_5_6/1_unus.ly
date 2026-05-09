\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a'2. a4
    a2 h
    a h4 h
    a1
    h2 e
    c r
    r d
    h h
    c c
    c h
    c g
  }
}

SopranoLyrics = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
  me --
  is tra --
  det,
  tra --
  det, tra --
  det me
  ho -- di --
  e: vae
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    e2. e4
    e2 g
    a gis4 gis
    a1
    gis
    r2 e
    f r
    r g
    g g
    g2. g4
    e2 g
  }
}

AltoLyrics = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
  me --
  is
  tra --
  det,
  tra --
  det me
  ho -- di --
  e: vae
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    c2. c4
    c2 h
    c e4 e
    e2 d
    e1
    r2 c
    a r
    r d
    e e
    d2. d4
    c2 e
  }
}

TenoreLyrics = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
  me -- _
  is
  tra --
  det,
  tra --
  det me
  ho -- di --
  e: vae
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a'2. a4
    a2 g
    f e4 e
    f1
    e
    r2 a
    f r
    r g
    e c
    g'2. g4
    c,2 r
  }
}

BassoLyrics = \lyricmode {
  U -- nus
  ex di --
  sci -- pu -- lis
  me --
  is
  tra --
  det,
  tra --
  det me
  ho -- di --
  e:
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key a \minor \time 2/2 \tempoMarkup "Allegro"
    a'1
    a2 g
    f e
    f1
    e
    r2 a
    f r
    r g
    e c
    g' g,
    c \clef tenor e'
  }
}

BassFigures = \figuremode {
  r1
  r
  r2 <_+>
  <7> <6>
  <_+>1
  r
  <6>
  r
  q
  <4>2 <3>
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
