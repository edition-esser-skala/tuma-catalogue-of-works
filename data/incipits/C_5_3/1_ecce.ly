\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    c'1
    c
    c
    c2 c
    b1
    a
    d2 c
    b a
    b1~
    b
  }
}

SopranoLyrics = \lyricmode {
  Ec --
  ce
  vi --
  di -- mus
  e --
  um
  non ha --
  ben -- tem
  "spe -"

%   ci -- em, ne -- que de -- co -- rem:
% a -- spe -- ctus e -- ius in e -- o non est:
% hic pec -- ca -- ta no -- stra por -- ta -- vit,
% et pro no -- bis do -- let:
% i -- pse au -- tem vul -- ne -- ra -
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    f1
    f
    f
    fis2 fis
    d1
    fis
    fis2 a
    g fis
    g1~
    g2 f!
  }
}

AltoLyrics = \lyricmode {
  Ec --
  ce
  vi --
  di -- mus
  e --
  um
  non ha --
  ben -- tem
  spe --
  "ci -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    a1
    a
    a
    a2 a
    b c
    d1
    R1*2
    r2 d
    es b
  }
}

TenoreLyrics = \lyricmode {
  Ec --
  ce
  vi --
  di -- mus
  e -- _
  um

  ne --
  que "de -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro" \autoBeamOff
    f1
    f
    es
    d2 d
    g1
    d
    R1*2
    r2 g
    es d
  }
}

BassoLyrics = \lyricmode {
  Ec --
  ce
  vi --
  di -- mus
  e --
  um

  ne --
  que "de -"
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key f \major \time 2/2 \tempoMarkup "Allegro"
    f1
    f
    es
    d
    g
    d
    \clef soprano << {
      d''2 c
      b a
      b
    } \\ {
      fis2 a
      g fis
      g
    } >> \clef bass g,
    es d
  }
}

BassFigures = \figuremode {
  r1
  r
  <4 2>
  <7 _+>
  r
  <_+>
  r
  r
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
