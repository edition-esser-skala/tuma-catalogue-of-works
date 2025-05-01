\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco"
    e'4\f c( h)
    r8 c h( c) \grace c h4
    r8 c h( dis fis a,)
    g4 r r \gotoBar "11"
    e8 e' c4( h)
    r8 c h( c) \grace c h4
    r8 c h( dis fis a,)
    g4 e r
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco"
    g'2 fis4
    g r r8 fis
    g( e) fis4 r
    r8 h, e( g h d,!) \gotoBar "11"
    e4 c' h
    r8 c h( c) h4
    r8 c h( dis fis a,)
    g g h( a gis fis)
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco" \autoBeamOff
    R2.*4 \gotoBar "11"
    e'4^\tutti c h
    r8 c h[ c] h4
    r8 c h[ dis fis a,]
    g4 e r
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son,
  e -- lei --
  _ son,
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco" \autoBeamOff
    R2.*4 \gotoBar "11"
    g'4.^\tutti g8 fis4
    g g fis
    g fis2
    e8 g h[ a gis fis]
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son,
  e -- lei --
  son, e -- "lei -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco" \autoBeamOff
    R2.*4 \gotoBar "11"
    h4^\tutti g8[ a] h4~
    h8 g g[ a] h4~
    h8 g h2
    h4 r r
  }
}

TenoreLyrics = \lyricmode {
  Ky -- ri -- e __
  e -- lei -- son, __
  e -- lei --
  son,
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco" \autoBeamOff
    R2.*4 \gotoBar "11"
    e4^\tutti e dis
    e e dis
    e dis h
    r8 e g[ a h d,]
  }
}

BassoLyrics = \lyricmode {
  Ky -- ri -- e
  e -- lei -- son,
  e -- lei -- son,
  e -- "lei -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 3/4 \tempoMarkup "Larghetto un poco"
    e2-\solo dis4
    e2 dis4
    e dis h
    e2 gis4 \gotoBar "11"
    e2-\tutti dis4
    e2 dis4
    e dis h
    r8 e g a h d,
  }
}

BassFigures = \figuremode {
  <5>4 <6> q
  <5>8 <6> <5> <6> q4
  <5>8 <6> q4 <7>
  r2.
  <5>4 <6> q
  <5>8 <6> <5> <6> q4
  <5>8 <6> q4 <7>
  r2 <6\\>4
}

\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
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
