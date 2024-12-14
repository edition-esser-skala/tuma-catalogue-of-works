\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    r4 h' g a h c
    h a g a h c
    h2 h r
    h1.~
    h
    h1 r2
  }
}

SopranoLyrics = \lyricmode {
  San -- _ _ _ _
  _ _ _ _ _ _
  _ ctus,
  san --

  ctus,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    r4 g' e fis g a
    g fis e fis g a
    g2 g r
    r4 fis d e fis g
    fis e d e fis g
    fis2 fis r
  }
}

AltoLyrics = \lyricmode {
  San -- _ _ _ _
  _ _ _ _ _ _
  _ ctus,
  san -- _ _ _ _
  _ _ _ _ _ _
  _ ctus,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    e1.~
    e
    e,1 r2
    r4 d' h cis d e
    d cis h cis d e
    d2 d r
  }
}

TenoreLyrics = \lyricmode {
  San --

  ctus,
  san -- _ _ _ _
  _ _ _ _ _ _
  _ ctus,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \autoBeamOff \tempoMarkup "Adagio"
    e1.~
    e
    e1 r2
    h1.~
    h
    h1 r2
  }
}

BassoLyrics = \lyricmode {
  San --

  ctus,
  san --

  ctus,
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/2 \tempoMarkup "Adagio"
    e2-\tutti r r
    e r r
    e1.
    h2 r r
    h r r
    h1.
  }
}

BassFigures = \figuremode {
  r1.
  r
  r
  <_!>
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
