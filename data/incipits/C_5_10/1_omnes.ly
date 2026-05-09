\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    g'1
    g2 a
    h fis
    g1
    fis2 fis
    h a
    g1
    fis
    e2 r
  }
}

SopranoLyrics = \lyricmode {
  O --
  mnes a --
  mi -- ci
  me --
  i de --
  re -- li --
  que --
  runt
  me,
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    e1
    e2 dis4 cis
    h2 h
    e1
    dis2 r
    r dis
    e e
    e dis
    e r
  }
}

AltoLyrics = \lyricmode {
  O --
  mnes a -- _
  mi -- ci
  me --
  i
  de --
  re -- li --
  que -- runt
  me,
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h1
    h2 a
    g h
    h1
    h2 r
    R1*3
    h2 h
  }
}

TenoreLyrics = \lyricmode {
  O --
  mnes a --
  mi -- ci
  me --
  i

  et "prae -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    e1
    e2 fis
    g dis
    e1
    h2 r
    r h
    c g
    a h
    e r
  }
}

BassoLyrics = \lyricmode {
  O --
  mnes a --
  mi -- ci
  me --
  i
  de --
  re -- li --
  que -- runt
  me,
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato"
    e1
    e2 fis
    g dis
    e1
    h2 \clef soprano fis''-!
    h-! \clef bass h,,
    c g
    a h
    e, r
  }
}

BassFigures = \figuremode {
  r1
  r2 <6\\>
  r1
  r
  <_+>
  r2 <7>
  <5> <6>
  <6 5> <_+>
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
