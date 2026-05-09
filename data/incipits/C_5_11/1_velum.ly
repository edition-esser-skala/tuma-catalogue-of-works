\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    r2 h'~
    h4 a a2
    r a~
    a4  g g2
    r g~
    g fis4 e
    fis\breve*1/2
    \time 3/2 h2 h h
    h4( a) h2 g4( a)
  }
}

SopranoLyrics = \lyricmode {
  Scis --
  sum est,
  scis --
  sum est,
  scis --
  sum _
  est,
  et o -- mnis
  ter -- ra "tre -"
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    r2 g'~
    g4 fis fis2
    r fis~
    fis4 e e2
    r e~
    e dis4 cis
    dis\breve*1/2
    \time 3/2 g2 g g
    g g, g'4( fis)
  }
}

AltoLyrics = \lyricmode {
  Scis --
  sum est,
  scis --
  sum est,
  scis --
  sum _
  est,
  et o -- mnis
  ter -- ra "tre -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    h2. g4
    a2. c4
    h1~
    h2 h
    h2. h4
    h1~
    h\breve*1/2
    \time 3/2 d2 d d
    d d, r
  }
}

TenoreLyrics = \lyricmode {
  Ve -- lum
  tem -- pli,
  tem --
  pli
  scis -- sum
  est, __

  et o -- mnis
  ter -- ra
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    e2. fis4
    g2 e
    fis2. e4
    dis h cis \hA dis
    e2 g4 fis
    e fis g e
    h1~
    h\breve*1/2
    \time 3/2 g'2 g g
    g g, r
  }
}

BassoLyrics = \lyricmode {
  Ve -- lum
  tem -- pli,
  tem -- _
  _ _ _ _
  _ pli _
  scis -- _ sum _
  est, __
  et o -- mnis
  ter -- ra
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato"
    e2. fis4
    g2 e
    fis2. e4
    dis h cis \hA dis
    e2 g4 fis
    e fis g e
    h1~
    h\breve*1/2
    \time 3/2 g'2 g g
    g g, r
  }
}

BassFigures = \figuremode {
  r1
  r
  <9>4 <8>2.
  r2 <6>
  <9 4>4 <8 3>2.
  r1
  <6 4>2 <5 _+>4 <4 2\+>
  <5 _+>1
  r1.
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
