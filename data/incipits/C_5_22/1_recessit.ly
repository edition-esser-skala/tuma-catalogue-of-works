\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    b'1
    a
    g
    b
    a2 g
    g fis
    g b
    d c
    c1
    b2 d
  }
}

SopranoLyrics = \lyricmode {
  Re --
  ces --
  sit
  pa --
  stor _
  no -- _
  ster fons
  a -- quae
  vi --
  vae ad
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    g'1
    g2 f
    f es
    d g
    es1
    d
    d2 d
    f g
    f1
    f2 f
  }
}

AltoLyrics = \lyricmode {
  Re --
  ces -- sit
  pa -- stor,
  pa -- _
  stor
  no --
  ster fons
  a -- quae
  vi --
  vae ad
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    d1
    d~
    d2 c~
    c b
    es c
    a1
    b2 b
    b b
    b a
    b b
  }
}

TenoreLyrics = \lyricmode {
  Re --
  ces --
  _
  sit
  pa -- stor
  no --
  ster fons
  a -- quae
  vi -- _
  vae ad
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto" \autoBeamOff
    g'1
    d
    es
    b
    c
    d
    g,2 g'
    d es
    f1
    b,2 b'
  }
}

BassoLyrics = \lyricmode {
  Re --
  ces --
  sit
  pa --
  stor
  no --
  ster fons
  a -- quae
  vi --
  vae ad
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key g \minor \time 2/2 \tempoMarkup "Allegretto"
    g'1
    d
    es
    b
    c
    d
    g,2 g'
    d es
    f1
    b,2 b'
  }
}

BassFigures = \figuremode {
  r1
  <4>2 <3>
  <9 7> <8 6>
  <9> <8>
  <6> <5>
  <4> <_+>
  r1
  <6>
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
