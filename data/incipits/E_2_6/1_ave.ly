\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    d'4 a8 f' e4 d8 cis
    d a r4 r a8 a
    b b16 b c!8 c a a a16[ b] a[ \hA b]
    c2 c4 c8 c
    c b b b b b a b
  }
}

SopranoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, a -- ve
  Do -- mi -- na An -- ge -- lo -- rum, sal -- ve
  ra -- dix, sal -- ve
  por -- ta ex qua mun -- do lux est
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    f4 f8 f g4 e8 e
    f f r4 r f8 f
    g g16 g g8 g g f f16[ g] f[ g]
    a2 a4 fis8 fis
    d d g g g g f f
  }
}

AltoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, a -- ve
  Do -- mi -- na An -- ge -- lo -- rum, sal -- ve
  ra -- dix, sal -- ve
  por -- ta ex qua mun -- do lux est
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    a4 a8 a b4 b8 a
    a a a a d8. d16 d4
    d8 d16 d c!8 c c c r4
    r c16[ b] c[ \hA b] a8 a d d
    d d d d c c r4
  }
}

TenoreLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, a -- ve Do -- mi -- na,
  Do -- mi -- na An -- ge -- lo -- rum,
  sal -- ve ra -- dix, sal -- ve
  ra -- dix, sal -- ve por -- ta,
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    d4 f8 d g4 a8 a,
    d d r4 r d8 d
    g g16 g e8 e f f, r4
    r a'16[ g] a[ g] fis8 fis d \hA fis
    g g, g' f e e f b,
  }
}

BassoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, a -- ve
  Do -- mi -- na An -- ge -- lo -- rum,
  sal -- ve ra -- dix, sal -- ve
  por -- ta ex qua mun -- do lux est
}

Organo = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    d4 f8 d g4 a8 a,
    d4 r r d
    g e f8 f, r4
    r a'8 g fis4 d8 \hA fis
    g g, g' f e4 f8 b,
  }
}

BassFigures = \figuremode {
  r1
  r
  <_->1
  r4 <6\\> <6 5>2
  <4>8 <_->2..
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vla" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new Staff {
      \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
      \Organo
    }
    \new FiguredBass { \BassFigures }
  >>
}
